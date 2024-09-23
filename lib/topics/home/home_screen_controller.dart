import 'package:flutter/material.dart';
import 'package:flutter_lab/models/topic.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final _searchController = TextEditingController();
  var _suggestions = Topic.data;

  TextEditingController get searchController => _searchController;
  List<Topic> get suggestions => _suggestions;

  void searchTopics(String keyword) {
    final suggestions = Topic.data.where((topic) {
      return topic.title.isCaseInsensitiveContains(keyword);
    }).toList();
    _suggestions = suggestions;
    update();
  }
}
