// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoComplete _$AutoCompleteFromJson(Map<String, dynamic> json) => AutoComplete(
      features: (json['features'] as List<dynamic>)
          .map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AutoCompleteToJson(AutoComplete instance) =>
    <String, dynamic>{
      'features': instance.features,
    };

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
      geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      properties:
          Properties.fromJson(json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
      'geometry': instance.geometry,
      'properties': instance.properties,
    };

Geometry _$GeometryFromJson(Map<String, dynamic> json) => Geometry(
      coordinates:
          (json['coordinates'] as List<dynamic>).map((e) => e as num).toList(),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
    };

Properties _$PropertiesFromJson(Map<String, dynamic> json) => Properties(
      label: json['label'] as String,
    );

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      'label': instance.label,
    };
