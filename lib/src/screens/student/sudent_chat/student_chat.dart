import 'package:flutter/material.dart';
import 'package:objetivo/src/components/studant_component/bottom_navigator/bottom_navigator_studant.dart';

class StudentChat extends StatefulWidget {
  const StudentChat({super.key});

  @override
  State<StudentChat> createState() => _StudentChatState();
}

class _StudentChatState extends State<StudentChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      bottomNavigationBar: BottomNavigatorStudent(),
    );
  }
}