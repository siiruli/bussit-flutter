import 'package:flutter/material.dart';
import 'package:bussit/ui/widgets/stop_list.dart';


class SearchStops extends StatefulWidget {
  const SearchStops({Key? key}) : super(key: key);

  @override
  State<SearchStops> createState() => _SearchStopsState();

}

class _SearchStopsState extends State<SearchStops> {
  String searchName = "";

  void _updSearchName(String name){
    setState(() {
      searchName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    final searchNameField = Form(child: TextFormField(
      autofocus: true,
      onChanged: _updSearchName,
      decoration: const InputDecoration(
        hintText: "Stop name...",
      ),
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find stops by name"),
      ),
      body: Column(
        children: [
          searchNameField,
          Expanded(child: StopListWidget(searchName: searchName)),
        ],
      ),
    );
  }

}