
import 'package:json_annotation/json_annotation.dart';

part 'Maintenance.g.dart';
@JsonSerializable()
class Maintenance {
  final String id;
  final String inventoryNumber;
  final String workOrderNumber;
  final String serviceProvider;
  final String serviceEngineerCode;
  final String faultName;

  Maintenance(this.id, this.inventoryNumber, this.workOrderNumber, this.serviceProvider, this.serviceEngineerCode, this.faultName);

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Maintenance.fromJson(Map<String, dynamic> json) => _$MaintenanceFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$MaintenanceToJson(this);
}