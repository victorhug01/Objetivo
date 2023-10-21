import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:objetivo/src/theme/theme_class.dart';

class StudentArea extends StatefulWidget {
  const StudentArea({super.key});

  @override
  State<StudentArea> createState() => _StudentAreaState();
}

class _StudentAreaState extends State<StudentArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ContainerBackground(),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorThemeClass.colorTertiary,
                      radius: 80.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Jennifer Lopes',
                          style: GoogleFonts.montserrat(
                            color: ColorThemeClass.colorTertiary,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          'jennifer.lopes@objetivo.com',
                          style: GoogleFonts.montserrat(
                            color: ColorThemeClass.colorTertiary,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ContainerOptions(
                      title: 'Boletim',
                    ),
                    ContainerOptions(
                      title: 'Controle de faltas',
                    ),
                    ContainerOptions(
                      title: '--Pesonalizado',
                    ),
                    ContainerOptions(
                      title: '--Pesonalizado',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerBackground extends StatelessWidget {
  const ContainerBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorThemeClass.colorPrimary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
    );
  }
}

class ContainerOptions extends StatelessWidget {
  final String title;
  const ContainerOptions({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorThemeClass.colorPrimary,
        ),
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          height: 60,
          child: ListTile(
            leading: Text(
              title,
              style: GoogleFonts.montserrat(
                color: ColorThemeClass.colorTertiary,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30,
              color: ColorThemeClass.colorTertiary,
            ),
          ),
        ),
      ),
    );
  }
}
