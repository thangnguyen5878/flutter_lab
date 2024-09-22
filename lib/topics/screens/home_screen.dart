import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/topic.dart';
import '../../utils/extensions/string_extenstion.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  // Hàm lọc các item dựa trên từ khóa
  // List<Map<String, dynamic>> _filterItems(String query) {
  //   return items
  //       .where((item) => (item['title']
  //                   .toLowerCase()
  //                   .contains(query.toLowerCase()) ==
  //               true ||
  //           item['description'].toLowerCase().contains(query.toLowerCase()) ==
  //               true))
  //       .toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                onChanged: (String value) {
                  // Gọi hàm lọc khi người dùng nhập từ khóa
                },
              )
            : const Text('Home Page'),
        actions: <Widget>[
          if (!_isSearching)
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                setState(() {
                  _isSearching = true;
                });
              },
            )
        ],
      ),
      body: ListView.builder(
        itemCount: Topic.data.length,
        itemBuilder: (BuildContext context, int index) {
          final Topic item = Topic.data[index];
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
    );
  }
}
