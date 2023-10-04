import 'package:flutter/material.dart';

class StudentArea extends StatefulWidget {
  const StudentArea({super.key});

  @override
  State<StudentArea> createState() => _StudentAreaState();
}

class _StudentAreaState extends State<StudentArea> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text('area'),
      ),
    );
  }
}