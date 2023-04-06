import 'dart:async';

import 'package:bussit/api/location_api.dart';
import 'package:bussit/model/address.dart';
import 'package:bussit/ui/widgets/itineraries/itinerary_list.dart';
import 'package:flutter/material.dart';

class ItineraryView extends StatelessWidget {
  const ItineraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const ItineraryForm();
  }
}
class ItineraryForm extends StatefulWidget {
  const ItineraryForm({Key? key}) : super(key: key);

  @override
  State<ItineraryForm> createState() => _ItineraryFormState();

}

class _ItineraryFormState extends State<ItineraryForm> {

  final _formKey = GlobalKey<FormState>();  
  Address? _locationFrom, _locationTo;


  @override
  Widget build(BuildContext context) {
  
    // List stops that is rebuilt when the id-list changes
    final form = Padding(
      padding: const EdgeInsets.all(8), 
      child: Form(
        key: _formKey,
        child: Column(children: [
          LocationField(
            hint: "From...",
            onSaved: (Address? value){_locationFrom = value;},
          ),
          LocationField(
            hint: "To...",
            onSaved: (Address? value){_locationTo = value;},
          ),
          TextButton(onPressed: (){
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(_locationFrom.toString() + ' -> ' + _locationTo.toString()),
                ),
              );
              setState(() {});
            }
          }, child: const Text("Search routes"))
        ])
      ),
    );
    final result = (_locationFrom == null || _locationTo == null) 
      ? const Text("No search") : ItineraryListWidget(
        from: _locationFrom!,
        to: _locationTo!,
        nResults: 8,
    );

    return ListView(children: [form, Card(child: result)],);


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
            FocusManager.instance.primaryFocus?.unfocus();
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

