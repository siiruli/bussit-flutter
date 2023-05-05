
import 'dart:async';
import 'package:bussit/api/location_api.dart';
import 'package:bussit/model/address.dart';
import 'package:flutter/material.dart';
import 'package:bussit/model/itinerary_form_data.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:developer' as developer;

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
      builder: (FormFieldState<Address?> fieldState){
        return Autocomplete<Address>(
          displayStringForOption: autocompleteOptionString,
          optionsBuilder: autocompleteBuilder,
          onSelected: (Address feature){
            fieldState.didChange(feature);
            FocusManager.instance.primaryFocus?.unfocus();
          },
          fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted){
            final gpsButton = IconButton(
              icon: const Icon(Icons.my_location),
              onPressed: () {
                Future<Position?> pos = determinePosition();
                pos.onError((error, stackTrace){
                  developer.log(error.toString());
                  return null;
                });
                pos.then((Position? value) {
                  if(value == null) return;
                  final address = Address(
                    geometry: Geometry(coordinates: [value.longitude, value.latitude]), 
                    properties: Properties(label: value.toString())
                  );
                  developer.log(address.properties.label);
                  textEditingController.text = address.properties.label;
                  fieldState.didChange(address);
                });
              },
            );

            final field = TextFormField(
              validator: (value){
                return (fieldState.value == null) ? "required" : null;
              },
              focusNode: focusNode,
              controller: textEditingController,
              decoration: InputDecoration(hintText: hint),
            );
            return Row(
              children: [
                Expanded(child: field),
                gpsButton,
              ],
            );
          },
        );
      }
    );
  }


}



/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
