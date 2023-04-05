import 'dart:async';

import 'package:bussit/api/location_api.dart';
import 'package:bussit/model/address.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class RouteView extends StatelessWidget {
  const RouteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const RouteForm();
  }
}
class RouteForm extends StatefulWidget {
  const RouteForm({Key? key}) : super(key: key);

  @override
  State<RouteForm> createState() => _RouteFormState();

}

class _RouteFormState extends State<RouteForm> {

  final _formKey = GlobalKey<FormState>();  

  @override
  Widget build(BuildContext context) {
    Address? locationFrom, locationTo;
  
    // List stops that is rebuilt when the id-list changes
    return Padding(
      padding: const EdgeInsets.all(8), 
      child: Form(
        key: _formKey,
        child: Column(children: [
          LocationField(
            hint: "From...",
            onSaved: (Address? value){locationFrom = value;},
          ),
          LocationField(
            hint: "To...",
            onSaved: (Address? value){locationTo = value;},
          ),
          TextButton(onPressed: (){
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(locationFrom.toString() + ' -> ' + locationTo.toString()),
                ),
              );
            }
          }, child: Text("Search routes"))
        ])
      ),
    );
  }

}


FutureOr<Iterable<Address>> autocompleteBuilder(TextEditingValue value){
  return fetchAutocomplete(value.text);
}

String autocompleteOptionString(Address feature){
  return feature.properties.label;
}

class LocationField extends StatelessWidget {
  const LocationField({
    this.hint, this.onSaved, Key? key,
  }) : super(key: key);

  final String? hint;
  final Function(Address?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return FormField<Address?>(
      onSaved: onSaved,
      initialValue: null,
      validator: (value){return value == null ? "Missing location" : null;},
      builder: (FormFieldState<Address?> field){
        return Autocomplete<Address>(
          displayStringForOption: autocompleteOptionString,
          optionsBuilder: autocompleteBuilder,
          onSelected: (Address feature){
            field.didChange(feature);
          },
          fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted){
            return TextFormField(
              focusNode: focusNode,
              controller: textEditingController,
              decoration: InputDecoration(hintText: hint),
            );
          },

        );
      }
    );
  }

}

