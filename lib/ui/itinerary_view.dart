import 'dart:async';

import 'package:bussit/api/location_api.dart';
import 'package:bussit/model/address.dart';
import 'package:bussit/ui/widgets/itineraries/itinerary_list.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;


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
  bool _arriveBy = false;
  Widget? _result;
  DateTime? _date;
  DateTime? _time;

  Key _keyFrom = GlobalKey();
  Key _keyTo = GlobalKey();

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
          time: DateTime.now(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // places
    final fieldFrom = LocationField(
      key: _keyFrom,
      hint: "From...",
      onSaved: (Address? value){_locationFrom = value;},
    );
    final fieldTo = LocationField(
      key: _keyTo,
      hint: "To...",
      onSaved: (Address? value){_locationTo = value;},
    );
    final swapButton = IconButton(
      icon: const Icon(Icons.swap_vert),
      onPressed: (){
        // Swap from and to
        _formKey.currentState?.save();
        setState(() {
          final tmp = _keyFrom;
          _keyFrom = _keyTo;
          _keyTo = tmp;
        });
      },
    );
    final places = Row(children: [
      Expanded(child: Column(children: [
        fieldFrom, fieldTo
      ],)),
      swapButton,
    ],);
    // time
    const dateChooser = Text('Date');
    const timeChooser = Text('Time');
    final nowButton = TextButton(
      onPressed: () => setState(() {
        _date = null;
        _time = null;
      }), 
      child: const Text('Now'),
    );
    final arrivalOrDeparture = DropdownButton<bool>(
      value: _arriveBy,
      items: const [
        DropdownMenuItem(value: false, child: Text("Departure")),
        DropdownMenuItem(value: true, child: Text("Arrival")),
      ], 
      onChanged: (bool? value) {
        setState(() {
          _arriveBy = value ?? _arriveBy;
        });
      }
    );
    

    final form = Padding(
      padding: const EdgeInsets.all(8), 
      child: Form(
        key: _formKey,
        child: Column(
          children: [places, 
          Row(
            children: [
              arrivalOrDeparture,
              dateChooser,
              timeChooser,
              nowButton, 
              TextButton(
                onPressed: saveResult,
                child: const Text("Search routes"),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
  }) : super(key: key);

  final String? hint;
  final Function(Address?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return FormField<Address?>(
      onSaved: onSaved,
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
              validator: (value){
                return (field.value == null) ? "required" : null;
              },
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

