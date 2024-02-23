import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:sportshop/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      home: const OnBoardingSrceen(),
    );
  }
}
