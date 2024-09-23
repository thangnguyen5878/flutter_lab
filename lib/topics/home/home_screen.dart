import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/topic.dart';
import '../../utils/extensions/string_extenstion.dart';
import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller.searchController,
                        onChanged: (value) {
                          controller.searchTopics(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Search Topics',
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.suggestions.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Topic item = controller.suggestions[index];
                    return ListTile(
                      title: Text(item.title),
                      subtitle: item.description.isNotNullOrEmpty
                          ? Text(item.description!)
                          : null,
                      onTap: () {
                        Get.to(item.page);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
