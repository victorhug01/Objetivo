import 'package:flutter/material.dart';
import 'package:objetivo/src/screens/student/meeting/student_meeting.dart';
import 'package:objetivo/src/screens/student/student_activities/student_activities.dart';
import 'package:objetivo/src/screens/student/student_area/student_area.dart';
import 'package:objetivo/src/screens/student/student_home/studant_home.dart';
import 'package:objetivo/src/screens/student/sudent_chat/student_chat.dart';
import 'package:objetivo/src/theme/theme_class.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';

class PageViewClass extends StatefulWidget {
  const PageViewClass({Key? key}) : super(key: key);

  @override
  State<PageViewClass> createState() => _PageViewClassState();
}

class _PageViewClassState extends State<PageViewClass> {
  final PageController _pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          StudentArea(),
          StudentMetting(),
          StudantHomePage(),
          StudentChat(),
          StudentActivities(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: SweetNavBar(
        currentIndex: _pageController.initialPage,
        backgroundColor: ColorThemeClass.colorPrimary,
        items: [
          _buildNavItem(Icons.person_outline, 'Aluno'),
          _buildNavItem(Icons.duo, 'Reunião'),
          _buildNavItem(Icons.home, 'Home'),
          _buildNavItem(Icons.chat, 'Chat'),
          _buildNavItem(Icons.assignment, 'Tarefas'),
        ],
        onTap: (pagina) {
          _pageController.animateToPage(
            pagina,
            duration: const Duration(milliseconds: 100),
            curve: Curves.ease,
          );
        },
      ),
    );
  }

  SweetNavBarItem _buildNavItem(IconData icon, String label) {
    return SweetNavBarItem(
      sweetIcon: Icon(icon),
      sweetLabel: label,
      sweetBackground: ColorThemeClass.colorPrimary,
      iconColors: [ColorThemeClass.colorTertiary, ColorThemeClass.colorTertiary],
    );
  }
}
