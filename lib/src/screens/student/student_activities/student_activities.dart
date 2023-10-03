import 'package:flutter/material.dart';
import 'package:objetivo/src/components/studant_component/bottom_navigator/bottom_navigator_studant.dart';

class StudentActivities extends StatefulWidget {
  const StudentActivities({super.key});

  @override
  State<StudentActivities> createState() => _StudentActivitiesState();
}

class _StudentActivitiesState extends State<StudentActivities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      bottomNavigationBar: BottomNavigatorStudent(),
    );
  }
}