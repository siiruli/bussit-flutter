import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'dart:ui';

/// Like useQuery from graphql-flutter, but doesn't poll when app lifecycle is
/// paused (i.e. in background), and polls immediately when resuming.
///
/// Adapted from the original useQuery source,
/// https://github.com/zino-hofmann/graphql-flutter/blob/graphql-v5.1.0/packages/graphql_flutter/lib/src/widgets/hooks/query.dart
QueryHookResult<TParsed> useQueryLifecycleAware<TParsed>(
    QueryOptions<TParsed> options) {
  final watchQueryOptions = useMemoized(
    () => options.asWatchQueryOptions(),
    [options],
  );
  final query = useWatchQuery(watchQueryOptions);
  final snapshot = useStream(
    query.stream,
    initialData: query.latestResult,
  );

  // Introduced after 5.1.0. Is this important in future versions?
  // useEffect(() {
  //   final cleanup = query.onData(
  //     QueryCallbackHandler(options: options).callbacks,
  //     removeAfterInvocation: false,
  //   );
  //   return cleanup;
  // }, [options, query]);

  if (options.pollInterval != null) {
    useOnAppLifecycleStateChange((previous, current) {
      if (current == AppLifecycleState.paused ||
          current == AppLifecycleState.detached) {
        query.stopPolling();
      } else {
        // TODO: Test transitions on iOS
        if (previous == AppLifecycleState.paused &&
            current == AppLifecycleState.resumed) {
          query.fetchResults();
        }
        if (!query.isCurrentlyPolling) {
          query.startPolling(options.pollInterval);
        }
      }
    });
  }

  return QueryHookResult(
    result: snapshot.data!,
    refetch: query.refetch,
    fetchMore: query.fetchMore,
  );
}
