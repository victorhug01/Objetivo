import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:objetivo/src/screens/student/student_home/drawer_component/drawer_component.dart';
import 'package:objetivo/src/theme/theme_class.dart';

class StudantHomePage extends StatelessWidget {
  const StudantHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorThemeClass.colorPrimary),
        title: Image.asset("assets/logo_objetivo.png", width: 150),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_important_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 8,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            child: Text(
              'Olá, Jennifer!',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 2.7,
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorThemeClass.colorPrimary,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Pendências',
                                        style: GoogleFonts.montserrat(
                                          color: ColorThemeClass.colorTertiary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        '4',
                                        style: GoogleFonts.montserrat(
                                          color: ColorThemeClass.colorTertiary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 45,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorThemeClass.colorPrimary,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Média',
                                        style: GoogleFonts.montserrat(
                                          color: ColorThemeClass.colorTertiary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        '8,5',
                                        style: GoogleFonts.montserrat(
                                          color: ColorThemeClass.colorTertiary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 45,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 2.7,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorThemeClass.colorPrimary,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 5, bottom: 5),
                  child: Text(
                    'Eventos',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                ),
                 SizedBox(
                  child: CarouselSlider.builder(
                    itemCount: 15,
                    itemBuilder: (context, index, realIndex) {
                      return Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: Container(
                            color: ColorThemeClass.colorPrimary,
                            child: Center(
                              child: Text(
                                'Item${index++}',
                                style: GoogleFonts.montserrat(
                                  color: ColorThemeClass.colorTertiary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 45,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height / 5,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
