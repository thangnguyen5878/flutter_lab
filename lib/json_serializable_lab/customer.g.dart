// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      firstName: json['firstName'] as String,
      user: json['user'] as String,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'user': instance.user,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
    };
