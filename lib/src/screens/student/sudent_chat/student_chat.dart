import 'package:flutter/material.dart';

class StudentChat extends StatefulWidget {
  const StudentChat({super.key});

  @override
  State<StudentChat> createState() => _StudentChatState();
}

class _StudentChatState extends State<StudentChat> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text('Chamada'),
      ),
    );
  }
}