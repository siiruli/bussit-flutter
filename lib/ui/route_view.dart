import 'dart:async';

import 'package:bussit/api/location_api.dart';
import 'package:bussit/model/address.dart';
import 'package:flutter/material.dart';
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

  final String? hint;

  @override
  State<LocationField> createState() => _LocationFieldState();

}

FutureOr<Iterable<Feature>> autocompleteBuilder(TextEditingValue value){
  return fetchAutocomplete(value.text);
}

String autocompleteOptionString(Feature feature){
  return feature.properties.label;
}

class _LocationFieldState extends State<LocationField> {  
  @override
  Widget build(BuildContext context) {
    return Autocomplete<Feature>(
      displayStringForOption: autocompleteOptionString,
      optionsBuilder: autocompleteBuilder,
      fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted){
        return TextFormField(
          focusNode: focusNode,
          controller: textEditingController,
          decoration: InputDecoration(hintText: widget.hint),
        );
      },
    );
  }

}

