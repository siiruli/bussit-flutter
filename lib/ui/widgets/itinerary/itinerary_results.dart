import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/ui/widgets/list_items/itinerary_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/utils/graphql_hooks.dart';

/// Widget showing a list of stops
class ItineraryResults extends HookWidget {
  const ItineraryResults({required this.variables, super.key});
  final Variables$Query$Itinerary variables;
  @override
  Widget build(BuildContext context) {
    final result = useQueryLifecycleAware(Options$Query$Itinerary(
      fetchPolicy: FetchPolicy.networkOnly,
      variables: variables,
    ));

    return itineraryListBuilder(result.result);
  }
}

// Build a stop list from a query result
Widget itineraryListBuilder(QueryResult? result,
    {VoidCallback? refetch, FetchMore? fetchMore}) {
  if (result == null) {
    return const Text("No result...");
  }
  if (result.hasException) {
    return Text(result.exception.toString());
  }

  if (result.isLoading) {
    return const Text('Loading...');
  }
  List<Query$Itinerary$plan$itineraries?>? list;

  if (result.data != null) {
    list = Query$Itinerary.fromJson(result.data!).plan?.itineraries;
  } else {
    return const Text("List is null :(");
  }
  list ??= [];

  return Column(
    children: list.map((e) => ItineraryWidget(itinerary: e)).toList(),
  );
}
