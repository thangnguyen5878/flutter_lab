import 'package:flutter/material.dart';

class Sample2Screen extends StatefulWidget {
  const Sample2Screen({super.key});

  @override
  State<Sample2Screen> createState() => _Sample2ScreenState();
}

class _Sample2ScreenState extends State<Sample2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample 2'),
      ),
      body: Center(
        child: Text('Sample 2'),
      ),
    );
  }
}
