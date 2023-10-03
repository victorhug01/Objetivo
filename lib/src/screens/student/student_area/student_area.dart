import 'package:flutter/material.dart';
import 'package:objetivo/src/components/studant_component/bottom_navigator/bottom_navigator_studant.dart';

class StudentArea extends StatefulWidget {
  const StudentArea({super.key});

  @override
  State<StudentArea> createState() => _StudentAreaState();
}

class _StudentAreaState extends State<StudentArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      bottomNavigationBar: BottomNavigatorStudent(),
    );
  }
}