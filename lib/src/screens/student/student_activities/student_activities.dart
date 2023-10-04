import 'package:flutter/material.dart';

class StudentActivities extends StatefulWidget {
  const StudentActivities({super.key});

  @override
  State<StudentActivities> createState() => _StudentActivitiesState();
}

class _StudentActivitiesState extends State<StudentActivities> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Text('Atividades'),
      ),
    );
  }
}