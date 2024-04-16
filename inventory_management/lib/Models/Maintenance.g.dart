// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Maintenance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Maintenance _$MaintenanceFromJson(Map<String, dynamic> json) => Maintenance(
      json['id'] as String,
      json['inventoryNumber'] as String,
      json['workOrderNumber'] as String,
      json['serviceProvider'] as String,
      json['serviceEngineerCode'] as String,
      json['faultName'] as String,
    );

Map<String, dynamic> _$MaintenanceToJson(Maintenance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventoryNumber': instance.inventoryNumber,
      'workOrderNumber': instance.workOrderNumber,
      'serviceProvider': instance.serviceProvider,
      'serviceEngineerCode': instance.serviceEngineerCode,
      'faultName': instance.faultName,
    };
