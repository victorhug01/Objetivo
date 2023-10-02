import 'package:flutter/material.dart';
import 'package:objetivo/src/screens/login/login.dart';
import 'package:objetivo/src/theme/theme_class.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorThemeClass.colorPrimary),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}