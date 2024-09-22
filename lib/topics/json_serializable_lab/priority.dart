import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'name')


enum Priority {
  low(name: 'Low'),
  medium(name: 'Medium'),
  high(name: 'High');

  const Priority({required this.name});

  final String name;
}
