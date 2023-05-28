import 'dart:async';
import 'package:bussit/api/location_api.dart';
import 'package:bussit/database/database.dart';
import 'package:bussit/database/dao.dart';
import 'package:bussit/model/address.dart';
import 'package:bussit/ui/widgets/components/geo_location.dart';
import 'package:bussit/utils/custom_autocomplete.dart';
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

class _LocationsFormState extends State<LocationsForm>
    with AutomaticKeepAliveClientMixin {
  final GlobalKey<LocationFieldState> _keyFrom = GlobalKey();
  final GlobalKey<LocationFieldState> _keyTo = GlobalKey();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // places
    final fieldFrom = LocationField(
      key: _keyFrom,
      hint: "From...",
      onSaved: (Address? value) {
        Provider.of<ItineraryFormData>(context, listen: false).locationFrom =
            value;
      },
    );
    final fieldTo = LocationField(
      key: _keyTo,
      hint: "To...",
      onSaved: (Address? value) {
        Provider.of<ItineraryFormData>(context, listen: false).locationTo =
            value;
      },
    );
    final swapButton = IconButton(
      icon: const Icon(Icons.swap_vert),
      onPressed: () {
        final from = _keyFrom.currentState?.value;
        final to = _keyTo.currentState?.value;
        _keyFrom.currentState?.setLocation(to);
        _keyTo.currentState?.setLocation(from);
      },
    );
    final places = Row(
      children: [
        Expanded(
            child: Column(
          children: [fieldFrom, fieldTo],
        )),
        swapButton,
      ],
    );

    // return form;
    return places;
  }
}

FutureOr<Iterable<Address>> autocompleteBuilder(
    TextEditingValue value, AddressDao? dao) {
  if (value.text.isEmpty && dao != null) {
    return dao
        .findAllElements()
        .then((list) => list.map((e) => e.toAddress()).toList());
  }
  return fetchAutocomplete(value.text).then((value) {
    if (value.isEmpty && dao != null) {
      return dao
          .findAllElements()
          .then((list) => list.map((e) => e.toAddress()).toList());
    } else {
      return value;
    }
  });
}

String autocompleteOptionString(Address feature) {
  return feature.properties.label;
}

class LocationField extends StatefulWidget {
  const LocationField({
    this.hint,
    this.onSaved,
    Key? key,
  }) : super(key: key);

  final String? hint;
  final Function(Address?)? onSaved;

  @override
  State<LocationField> createState() => LocationFieldState();
}

class LocationFieldState extends State<LocationField> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final GlobalKey<FormFieldState<Address?>> _fieldKey = GlobalKey();

  void setLocation(Address? value) {
    _fieldKey.currentState?.didChange(value);
    _textEditingController.text = value?.properties.label ?? "";
  }

  Address? get value => _fieldKey.currentState?.value;

  @override
  Widget build(BuildContext context) {
    AddressDao? addressDao = Provider.of<AppDatabase?>(context)?.addressDao;
    final gpsButton = IconButton(
      icon: const Icon(Icons.my_location),
      onPressed: () {
        // Set address to current location
        Future<Position?> pos = determinePosition();
        pos.onError((error, stackTrace) {
          developer.log(error.toString());
          return null;
        });
        pos.then((Position? value) {
          if (value == null) return;
          final address = Address(
            geometry: Geometry(coordinates: [value.longitude, value.latitude]),
            properties:
                Properties(label: value.toString(), gid: value.toString()),
          );
          developer.log(address.properties.label);
          setLocation(address);
        });
      },
    );

    return FormField<Address?>(
        key: _fieldKey,
        onSaved: widget.onSaved,
        validator: (value) {
          return value == null ? "Missing location" : null;
        },
        builder: (FormFieldState<Address?> fieldState) {
          return CustomAutocomplete<Address>(
            textEditingController: _textEditingController,
            focusNode: _focusNode,
            displayStringForOption: autocompleteOptionString,
            optionsBuilder: (value) => autocompleteBuilder(value, addressDao),
            onSelected: (Address feature) {
              // Save search
              addressDao?.insertAndFilter(AddressEntity.fromAddress(
                  feature, DateTime.now().millisecondsSinceEpoch));
              fieldState.didChange(feature);
              FocusManager.instance.primaryFocus?.unfocus();
            },
            fieldViewBuilder:
                (context, textEditingController, focusNode, onFieldSubmitted) {
              final field = TextFormField(
                validator: (value) {
                  return (fieldState.value == null) ? "required" : null;
                },
                focusNode: focusNode,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                controller: textEditingController,
                decoration: InputDecoration(
                    hintText: widget.hint,
                    suffix: GestureDetector(
                        child: const Icon(Icons.clear),
                        onTap: () {
                          fieldState.didChange(null);
                          textEditingController.text = "";
                        })),
              );
              return Row(
                children: [
                  Expanded(child: field),
                  gpsButton,
                ],
              );
            },
          );
        });
  }
}
