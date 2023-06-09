import 'package:json_annotation/json_annotation.dart';

part 'address_json.g.dart';

@JsonSerializable()
class AutoComplete {
  AutoComplete({required this.features});
  List<AddressJson> features;
  factory AutoComplete.fromJson(Map<String, dynamic> json) =>
      _$AutoCompleteFromJson(json);
}

@JsonSerializable()
class AddressJson {
  AddressJson({required this.geometry, required this.properties});
  Geometry geometry;
  Properties properties;

  factory AddressJson.fromJson(Map<String, dynamic> json) =>
      _$AddressJsonFromJson(json);

  @override
  String toString() {
    return properties.label;
  }
}

@JsonSerializable()
class Geometry {
  Geometry({required this.coordinates});
  List<num> coordinates;
  num get lat {
    return coordinates[1];
  }

  num get lon {
    return coordinates[0];
  }

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@JsonSerializable()
class Properties {
  Properties({required this.label, required this.gid});
  String label;
  String gid;
  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}
