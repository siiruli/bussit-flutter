import 'package:bussit/model/saved_stops.dart';
import 'package:bussit/ui/stop_search_view.dart';
import 'package:flutter/material.dart';
import 'package:bussit/ui/widgets/stops/stop_list.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;

class StopsView extends StatefulWidget {
  const StopsView({Key? key}) : super(key: key);

  @override
  State<StopsView> createState() => _StopsViewState();

}

class _StopsViewState extends State<StopsView> {

  @override
  Widget build(BuildContext context) {
    // List stops that is rebuilt when the id-list changes
    final stopList = Consumer<SavedStopIds>(
      builder: (context, savedIds, child) {
        developer.log('Stop list: ' + savedIds.ids.toString(), name: 'my.app.category');

        return StopListWidget(ids: savedIds.ids);
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Saved stops"),),
      body: stopList,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SearchStops()
            )
          );
        },
        tooltip: 'Find stops',
        child: const Icon(Icons.add),
      ),
    );
  }

}