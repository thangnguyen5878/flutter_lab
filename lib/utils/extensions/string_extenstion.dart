extension NullableeeStringExtenstion on String? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}