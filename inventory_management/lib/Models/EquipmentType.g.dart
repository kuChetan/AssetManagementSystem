// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EquipmentType.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipmentType _$EquipmentTypeFromJson(Map<String, dynamic> json) =>
    EquipmentType(
      json['id'] as String,
      json['ipmProcedure'] as String,
      json['ipmFrequency'] as String,
      json['riskLevel'] as String,
      json['responsibleStaff'] as String,
    );

Map<String, dynamic> _$EquipmentTypeToJson(EquipmentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ipmProcedure': instance.ipmProcedure,
      'ipmFrequency': instance.ipmFrequency,
      'riskLevel': instance.riskLevel,
      'responsibleStaff': instance.responsibleStaff,
    };
