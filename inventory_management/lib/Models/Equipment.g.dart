// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Equipment _$EquipmentFromJson(Map<String, dynamic> json) => Equipment(
      json['id'] as String,
      (json['qrCodeImage'] as List<dynamic>).map((e) => e as int).toList(),
      json['modelNumber'] as String,
      json['serialNumber'] as String,
      (json['spareParts'] as List<dynamic>)
          .map((e) => Parts.fromJson(e as Map<String, dynamic>))
          .toList(),
      DateTime.parse(json['warrentyUpto'] as String),
      DateTime.parse(json['dateOfPurchasing'] as String),
      json['status'] as String,
      (json['maintenances'] as List<dynamic>)
          .map((e) => Maintenance.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['orderList'] as List<dynamic>)
          .map((e) => Parts.fromJson(e as Map<String, dynamic>))
          .toList(),
      Manufacturer.fromJson(json['manufacturer'] as Map<String, dynamic>),
      EquipmentType.fromJson(json['equipmentType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EquipmentToJson(Equipment instance) => <String, dynamic>{
      'id': instance.id,
      'qrCodeImage': instance.qrCodeImage,
      'modelNumber': instance.modelNumber,
      'serialNumber': instance.serialNumber,
      'spareParts': instance.spareParts,
      'warrentyUpto': instance.warrentyUpto.toIso8601String(),
      'dateOfPurchasing': instance.dateOfPurchasing.toIso8601String(),
      'status': instance.status,
      'maintenances': instance.maintenances,
      'orderList': instance.orderList,
      'manufacturer': instance.manufacturer,
      'equipmentType': instance.equipmentType,
    };
