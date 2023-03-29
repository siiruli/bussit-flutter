import 'package:bussit/model/saved_stops.dart';
import 'package:flutter/material.dart';
import 'package:bussit/ui/widgets/stop_list.dart';
import 'package:provider/provider.dart';

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
        return StopListWidget(ids: savedIds.ids);
      },
    );

    return Scaffold(
      body: stopList,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Find stops',
        child: const Icon(Icons.add),
      ),
    );
  }

}