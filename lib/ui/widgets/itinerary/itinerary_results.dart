import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/ui/widgets/components/graphql_query_result.dart';
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

    return GraphQLQueryResult(
      resultBuilder: itineraryListBuilder,
      result: result.result,
    );
  }
}

/// Build a list of itineraries from result data
Widget itineraryListBuilder(Map<String, dynamic> data) {
  List<Query$Itinerary$plan$itineraries?>? list =
      Query$Itinerary.fromJson(data).plan?.itineraries;
  list ??= [];

  return Column(
    children: list.map((e) => ItineraryWidget(itinerary: e)).toList(),
  );
}
