import 'package:flutter/material.dart';
import 'package:objetivo/src/theme/theme_class.dart';

class DrawerStudantComponent extends StatefulWidget {
  const DrawerStudantComponent({super.key});

  @override
  State<DrawerStudantComponent> createState() => _DrawerStudantComponentState();
}

class _DrawerStudantComponentState extends State<DrawerStudantComponent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorThemeClass.colorPrimary,
    );
  }
}