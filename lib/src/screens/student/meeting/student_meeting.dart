import 'package:flutter/material.dart';
import 'package:objetivo/src/components/studant_component/bottom_navigator/bottom_navigator_studant.dart';

class StudentMetting extends StatefulWidget {
  const StudentMetting({super.key});

  @override
  State<StudentMetting> createState() => _StudentMettingState();
}

class _StudentMettingState extends State<StudentMetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: BottomNavigatorStudent(),
    );
  }
}