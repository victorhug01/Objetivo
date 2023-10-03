import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:objetivo/src/screens/student/meeting/student_meeting.dart';
import 'package:objetivo/src/screens/student/student_activities/student_activities.dart';
import 'package:objetivo/src/screens/student/student_area/student_area.dart';
import 'package:objetivo/src/screens/student/student_home/studant_home.dart';
import 'package:objetivo/src/screens/student/sudent_chat/student_chat.dart';

class BottomNavigatorStudent extends StatefulWidget {
  const BottomNavigatorStudent({super.key});



  @override
  State<BottomNavigatorStudent> createState() => _BottomNavigatorStudentState();
}

class _BottomNavigatorStudentState extends State<BottomNavigatorStudent> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;
  late PageController pc;
  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: index);
  }

  final screens = const [
    StudentArea(),
    StudentMetting(),
    StudantHomePage(),
    StudentChat(),
    StudentActivities(),
  ];

  setindex(pagina) {
    setState(() {
      index = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.person, size: 30),
      const Icon(Icons.star, size: 30),
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(
        Icons.library_add,
        size: 30,
      )
    ];
    return Container(
      color: Colors.blueAccent,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            backgroundColor: const Color(0xfff5f5f5),
            body: PageView(
              controller: pc,
              onPageChanged: setindex,
              children: const <Widget>[
                StudentArea(),
                StudentMetting(),
                StudantHomePage(),
                StudentChat(),
                StudentActivities(),
              ],
            ),
            // screens[index],
            extendBody: true,
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                  iconTheme: const IconThemeData(color: Colors.white)),
              child: CurvedNavigationBar(
                  key: navigationKey,
                  buttonBackgroundColor: Colors.grey,
                  color: Colors.black87,
                  backgroundColor: Colors.transparent,
                  height: 60,
                  index: index = index,
                  items: items,
                  animationCurve: Curves.easeInOut,
                  animationDuration: const Duration(milliseconds: 100),
                  onTap: (pagina) {
                    pc.animateToPage(pagina,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.ease);
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
