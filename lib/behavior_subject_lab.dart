import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  final BehaviorSubject<int> subject = BehaviorSubject<int>.seeded(0);

  subject.add(1);

  subject.stream.listen((int value) {
    debugPrint('${DateTime.now()}: Observer 1: $value');
  });

  subject.add(2);

  subject.stream.listen((int value) {
    print('${DateTime.now()}: Observer 2: $value');
  });

  subject.add(3);

  subject.close();
}
