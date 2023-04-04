

import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class AutoComplete {
  AutoComplete({required this.features});
  List<Feature> features;
  factory AutoComplete.fromJson(Map<String, dynamic> json) => _$AutoCompleteFromJson(json);
}

@JsonSerializable()
class Feature {
  Feature({required this.geometry, required this.properties});
  Geometry geometry;
  Properties properties;
  factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}


@JsonSerializable()
class Geometry {
  Geometry({required this.coordinates});
  List<num> coordinates;
  factory Geometry.fromJson(Map<String, dynamic> json) => _$GeometryFromJson(json);
}


@JsonSerializable()
class Properties {
  Properties({required this.label});
  String label;
  factory Properties.fromJson(Map<String, dynamic> json) => _$PropertiesFromJson(json);
}