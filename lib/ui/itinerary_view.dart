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
  const ItineraryForm({super.key});

  @override
  State<ItineraryForm> createState() => _ItineraryFormState();

}

class _ItineraryFormState extends State<ItineraryForm>  with AutomaticKeepAliveClientMixin {

  final _formKey = GlobalKey<FormState>();  
  Address? _locationFrom, _locationTo;
  
  Widget? _result;
  
  @override
  bool get wantKeepAlive => true;

  void saveResult(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_locationFrom.toString() + ' -> ' + _locationTo.toString()),
        ),
      );
      setState(() {
        _result = ItineraryListWidget(
          from: _locationFrom!, 
          to: _locationTo!,
          nResults: 8,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // List stops that is rebuilt when the id-list changes
    final form = Padding(
      padding: const EdgeInsets.all(8), 
      child: Form(
        key: _formKey,
        child: Column(children: [
          LocationField(
            hint: "From...",
            initialValue: _locationFrom,
            onSaved: (Address? value){_locationFrom = value;},
          ),
          LocationField(
            hint: "To...",
            onSaved: (Address? value){_locationTo = value;},
            initialValue: _locationTo,
          ),
          TextButton(
            onPressed: saveResult,
            child: const Text("Search routes"),
          ),
        ]),
      ),
    );
    
    // return form;
    return ListView(children: [form, _result ?? const Text("No search")],);

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
    this.initialValue,
  }) : super(key: key);

  final String? hint;
  final Function(Address?)? onSaved;
  final Address? initialValue;
  @override
  Widget build(BuildContext context) {
    return FormField<Address?>(
      onSaved: onSaved,
      initialValue: initialValue,
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

