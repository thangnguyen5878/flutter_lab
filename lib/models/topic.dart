import 'package:flutter/material.dart';
import '../topics/keyboard_actions/keyboard_action_example_1.dart';

import '../topics/sample/sample1.dart';
import '../topics/sample/sample2.dart';

class Topic {
  Topic({required this.title, this.description, required this.page});

  final String title;
  final String? description;
  final Widget page;

  static List<Topic> data = <Topic>[
    Topic(
      title: 'Keyboard Actions',
      page: const KeyBoardActionsExample1(),
    ),
    Topic(
      title: 'Sample 1',
      page: const Sample1Screen(),
    ),
    Topic(
      title: 'Sample 2',
      page: const Sample2Screen(),
    ),
  ];
}
