import 'package:inventory_management/Models/EquipmentType.dart';
import 'package:inventory_management/Models/Maintenance.dart';
import 'package:inventory_management/Models/Manufacturer.dart';
import 'package:inventory_management/Models/Parts.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Equipment.g.dart';
@JsonSerializable()
class Equipment {

  Equipment(this.id, this.qrCodeImage, this.modelNumber, this.serialNumber, this.spareParts, this.warrentyUpto, this.dateOfPurchasing, this.status, this.maintenances, this.orderList, this.manufacturer, this.equipmentType);

/// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Equipment.fromJson(Map<String, dynamic> json) => _$EquipmentFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$EquipmentToJson(this);
  final String id;
  final List<int> qrCodeImage;
  final String modelNumber;
  final String serialNumber;
  final List<Parts> spareParts;
  final DateTime warrentyUpto;
  final DateTime dateOfPurchasing;
  final String status;
  final List<Maintenance> maintenances;
  final List<Parts>? orderList;
  final Manufacturer manufacturer;
  final EquipmentType equipmentType;

  
  
}








