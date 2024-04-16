// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Manufacturer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manufacturer _$ManufacturerFromJson(Map<String, dynamic> json) => Manufacturer(
      json['id'] as String,
      json['manufracturerCode'] as String,
      json['manufracturerName'] as String,
      json['manufracturerEmail'] as String,
      json['manufracturerMobileNumber'] as String,
      json['manufracturerAddress'] as String,
      json['manufracturerContactName'] as String,
    );

Map<String, dynamic> _$ManufacturerToJson(Manufacturer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'manufracturerCode': instance.manufracturerCode,
      'manufracturerName': instance.manufracturerName,
      'manufracturerEmail': instance.manufracturerEmail,
      'manufracturerMobileNumber': instance.manufracturerMobileNumber,
      'manufracturerAddress': instance.manufracturerAddress,
      'manufracturerContactName': instance.manufracturerContactName,
    };
