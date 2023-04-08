
import 'dart:async';
import 'package:bussit/api/location_api.dart';
import 'package:bussit/model/address.dart';
import 'package:flutter/material.dart';
import 'package:bussit/model/itinerary_form_data.dart';
import 'package:provider/provider.dart';


class LocationsForm extends StatefulWidget {
  const LocationsForm({super.key});

  @override
  State<LocationsForm> createState() => _LocationsFormState();

}

class _LocationsFormState extends State<LocationsForm>  with AutomaticKeepAliveClientMixin {

  Key _keyFrom = GlobalKey();
  Key _keyTo = GlobalKey();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<ItineraryFormData>(
      builder: (context, formData, child) {
        // places
        final fieldFrom = LocationField(
          key: _keyFrom,
          hint: "From...",
          onSaved: (Address? value){formData.locationFrom = value;},
        );
        final fieldTo = LocationField(
          key: _keyTo,
          hint: "To...",
          onSaved: (Address? value){formData.locationTo = value;},
        );
        final swapButton = IconButton(
          icon: const Icon(Icons.swap_vert),
          onPressed: (){
            // Swap from and to
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
        
        // return form;
        return places;
      }
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

