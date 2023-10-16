import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLQueryResult extends StatelessWidget {
  /// Show the result of a Graphql query, if it has data.
  /// If the result doesn't have data for some reason,
  /// then show something that describes the situation.
  const GraphQLQueryResult(
      {required this.resultBuilder, this.result, super.key});

  /// A builder for a widget that shows the result data
  final Widget Function(Map<String, dynamic>) resultBuilder;

  /// The query result
  final QueryResult? result;

  @override
  Widget build(BuildContext context) {
    if (result == null) {
      return const Text("No result...");
    }
    if (result!.hasException) {
      return Text(result!.exception.toString());
    }

    if (result!.isLoading) {
      return const Text('Loading...');
    }

    if (result!.data == null) {
      return const Text('Result has no data');
    } else {
      return resultBuilder(result!.data!);
    }
  }
}
