import 'package:bussit/model/saved_stops.dart';
import 'package:flutter/material.dart';
import 'package:bussit/ui/widgets/query_results/stop_results.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;

class StopsView extends StatelessWidget {
  const StopsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List stops that is rebuilt when the id-list changes
    final stopList = Consumer<SavedStopIds>(
      builder: (context, savedIds, child) {
        developer.log('Stop list: ' + savedIds.ids.toString(),
            name: 'my.app.category');

        return StopQueryResults(
          ids: savedIds.ids,
          pollInterval: const Duration(seconds: 5),
        );
      },
    );

    return stopList;
  }
}
