import 'package:flutter/material.dart';

class Sample1Screen extends StatefulWidget {
  const Sample1Screen({super.key});

  @override
  State<Sample1Screen> createState() => _Sample1ScreenState();
}

class _Sample1ScreenState extends State<Sample1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample 1'),
      ),
      body: Center(
        child: Text('Sample 1'),
      ),
    );
  }
}
