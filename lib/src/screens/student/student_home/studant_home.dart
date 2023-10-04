import 'package:flutter/material.dart';
import 'package:objetivo/src/components/studant_component/drawer_studant/drawer_component.dart';

class StudantHomePage extends StatefulWidget {
  const StudantHomePage({super.key});

  @override
  State<StudantHomePage> createState() => _StudantHomePageState();
}

class _StudantHomePageState extends State<StudantHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerStudantComponent(),
      appBar: AppBar(
        title: Image.asset(
          "assets/logo_objetivo.png",
          width: 150,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_important_outlined),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
        ],
      ),
    );
  }
}
