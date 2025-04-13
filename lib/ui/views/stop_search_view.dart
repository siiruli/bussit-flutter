import 'package:flutter/material.dart';
import 'package:bussit/ui/widgets/query_results/stop_results.dart';

class SearchStops extends StatefulWidget {
  const SearchStops({Key? key}) : super(key: key);

  @override
  State<SearchStops> createState() => _SearchStopsState();
}

class _SearchStopsState extends State<SearchStops> {
  String searchName = "";
  String searchNameDraft = "";

  void _updSearchName(String? name) {
    searchNameDraft = name ?? "";
  }

  void _onSearch() {
    setState(() {
      searchName = searchNameDraft;
    });
  }

  @override
  Widget build(BuildContext context) {
    final searchNameField = Form(
        child: Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        autofocus: true,
        onChanged: _updSearchName,
        onEditingComplete: _onSearch,
        decoration: const InputDecoration(
          hintText: "Stop name...",
        ),
      ),
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find stops by name"),
      ),
      body: Column(
        children: [
          searchNameField,
          Expanded(
            child: StopQueryResults(
              searchName: searchName,
            ),
          ),
        ],
      ),
    );
  }
}
