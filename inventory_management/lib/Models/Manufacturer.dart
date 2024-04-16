
import 'package:json_annotation/json_annotation.dart';

part 'Manufacturer.g.dart';
@JsonSerializable()
class Manufacturer {
  final String id;
  final String manufracturerCode;
  final String manufracturerName;
  final String manufracturerEmail;
  final String manufracturerMobileNumber;
  final String manufracturerAddress;
  final String manufracturerContactName;

  Manufacturer(this.id, this.manufracturerCode, this.manufracturerName, this.manufracturerEmail, this.manufracturerMobileNumber, this.manufracturerAddress, this.manufracturerContactName);
    // private List<Seller> sellers;
    /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Manufacturer.fromJson(Map<String, dynamic> json) => _$ManufacturerFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ManufacturerToJson(this);

}