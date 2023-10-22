import 'package:flutter/material.dart';
import 'package:objetivo/src/theme/theme_class.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorThemeClass.colorSecondary,
      child: ListView(
        children: const [],
      ),
    );
  }
}
