import 'package:bussit/model/saved_stops.dart';
import 'package:bussit/ui/stop_search_view.dart';
import 'package:flutter/material.dart';
import 'package:bussit/ui/widgets/stops/stop_list.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;

class RouteView extends StatefulWidget {
  const RouteView({Key? key}) : super(key: key);

  @override
  State<RouteView> createState() => _RouteViewState();

}

class _RouteViewState extends State<RouteView> {

  

  @override
  Widget build(BuildContext context) {
    // List stops that is rebuilt when the id-list changes
    return Padding(
      padding: const EdgeInsets.all(8), 
      child: Form(
        child: Column(children: const [
          LocationField(hint: "From...",),
          LocationField(hint: "To...",)
        ])
      ),
    );
  }

}

class LocationField extends StatefulWidget {
  const LocationField({this.hint, Key? key}) : super(key: key);

  final hint;

  @override
  State<LocationField> createState() => _LocationFieldState();

}

class _LocationFieldState extends State<LocationField> {

  

  @override
  Widget build(BuildContext context) {
    // List stops that is rebuilt when the id-list changes
    return TextFormField(
      decoration: InputDecoration(hintText: widget.hint),
    );
  }

}

