

import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class AutoComplete {
  AutoComplete({required this.features});
  List<Address> features;
  factory AutoComplete.fromJson(Map<String, dynamic> json) => _$AutoCompleteFromJson(json);
}

@JsonSerializable()
class Address {
  Address({required this.geometry, required this.properties});
  Geometry geometry;
  Properties properties;
  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  @override
  String toString() {
    return properties.label;
  }
}


@JsonSerializable()
class Geometry {
  Geometry({required this.coordinates});
  List<num> coordinates;
  num get lat {return coordinates[1];}
  num get lon {return coordinates[0];}

  factory Geometry.fromJson(Map<String, dynamic> json) => _$GeometryFromJson(json);
}


@JsonSerializable()
class Properties {
  Properties({required this.label, required this.gid});
  String label;
  String gid;
  factory Properties.fromJson(Map<String, dynamic> json) => _$PropertiesFromJson(json);
}