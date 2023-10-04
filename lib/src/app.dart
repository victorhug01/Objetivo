import 'package:flutter/material.dart';
import 'package:objetivo/src/screens/student/pageView/page_view.dart';
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
      home: const PageViewClass(),
    );
  }
}