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
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(0),
      //   child: AppBar(
      //     backgroundColor: ColorThemeClass.colorPrimary,
      //   ),
      // ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ColorThemeClass.colorPrimary,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.5,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/fundo_teste.jpg'),
                      radius: 80,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Jennifer Lopes',
                      style: GoogleFonts.montserrat(
                        color: ColorThemeClass.colorTertiary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'jenniferlopes@objetivo.com',
                      style: GoogleFonts.montserrat(
                        color: ColorThemeClass.colorTertiary,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    ContainerOptions(
                      title: 'Boletim',
                    ),
                    ContainerOptions(title: 'Controle de faltas')
                  ],
                ),
              ),
            ],
          )
        ],
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
