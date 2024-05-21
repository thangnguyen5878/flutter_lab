import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {

  Customer({required this.firstName, required this.user, this.dateOfBirth});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
  /// The generated code assumes these values exist in JSON.
  final String firstName, user;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.
  final DateTime? dateOfBirth;

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
