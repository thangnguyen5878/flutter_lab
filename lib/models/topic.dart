import 'package:flutter/material.dart';
import 'package:flutter_lab/topics/keyboard_actions/keyboard_action_example_1.dart';

import '../topics/sample/sample1.dart';
import '../topics/sample/sample2.dart';

class Topic {
  Topic({required this.title, this.description, required this.page});

  final String title;
  final String? description;
  final Widget page;

  static List<Topic> data = [
    Topic(
      title: 'Keyboard Actions',
      page: KeyBoardActionsExample1(),
    ),
    Topic(
      title: 'Sample 1',
      page: Sample1Screen(),
    ),
    Topic(
      title: 'Sample 2',
      page: Sample2Screen(),
    ),
  ];
}



