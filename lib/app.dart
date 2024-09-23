import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'initial_bindings.dart';
import 'topics/home/home_screen.dart';
import 'utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      home: const HomeScreen(),
    );
  }
}
