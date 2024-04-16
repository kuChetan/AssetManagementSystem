
import 'package:json_annotation/json_annotation.dart';

part 'Parts.g.dart';

@JsonSerializable()
class Parts {
  final String id;
  final String partsCode;
  final String partsName;

  Parts(this.id, this.partsCode, this.partsName);

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Parts.fromJson(Map<String, dynamic> json) => _$PartsFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$PartsToJson(this);
}