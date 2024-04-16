import 'package:json_annotation/json_annotation.dart';

part 'EquipmentType.g.dart';

@JsonSerializable()
class EquipmentType {
  final String id;
  final String ipmProcedure;
  final String ipmFrequency;
  final String riskLevel;
  final String responsibleStaff;

  EquipmentType(this.id, this.ipmProcedure, this.ipmFrequency, this.riskLevel, this.responsibleStaff);
  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory EquipmentType.fromJson(Map<String, dynamic> json) => _$EquipmentTypeFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$EquipmentTypeToJson(this);
  
}