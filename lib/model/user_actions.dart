import 'package:bussit/model/address.dart';
import 'package:bussit/ui/widgets/itineraries/form_components/locations_form.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

/// Global keys needed to control the app
class AppKeys {
  final GlobalKey<LocationFieldState> startAddressField = GlobalKey();
  final GlobalKey<LocationFieldState> endAddressField = GlobalKey();
}

/// Methods for controlling certain states from other parts of the app
class UserActions {
  final keys = AppKeys();

  void setAsStartLocation(Address address) {
    developer.log("Set as start location", name: "bussit.user_actions");
    keys.startAddressField.currentState?.setLocation(address);
  }

  void setAsEndLocation(Address address) {
    developer.log("Set as end location", name: "bussit.user_actions");
    keys.endAddressField.currentState?.setLocation(address);
  }
}
