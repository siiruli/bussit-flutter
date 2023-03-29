import 'package:flutter/material.dart';
import 'package:bussit/ui/widgets/stop_list.dart';


class StopsView extends StatefulWidget {
  const StopsView({Key? key}) : super(key: key);

  @override
  State<StopsView> createState() => _StopsViewState();

}

class _StopsViewState extends State<StopsView> {
  List<String> stopIdList = [];

  void _findStops(){

  }
  void _toggleFavorite(String id){
    setState(() {
      if(stopIdList.contains(id)) {
        stopIdList.remove(id);
      }
      else {
        stopIdList.add(id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StopListWidget(ids: stopIdList),
      floatingActionButton: FloatingActionButton(
        onPressed: _findStops,
        tooltip: 'Find stops',
        child: const Icon(Icons.add),
      ),
    );
  }

}