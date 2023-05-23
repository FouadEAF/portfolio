// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portfolio/tools/myWidgets.dart';
import 'package:portfolio/tools/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/framework.dart';

class WhoIAm_page extends StatelessWidget {
  WhoIAm_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: DarkMode.backgound,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
//===================================Head=======================================
            Expanded(flex: 1, child: HeaderPages()),
//===================================Body=======================================
            Expanded(flex: 4, child: BodyWhoIAM(context)),
//===================================Foot=======================================
            FooterPages(),
          ],
        ),
      ),
    );
  }

  Row BodyWhoIAM(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'El Azbi Fouad',
                      style: GoogleFonts.comingSoon(
                        color: DarkMode.fontColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Developper EAF\n A Software engineer, developper and a '
                      'freelancer of Flutter and VBA as expert of Mirosoft office '
                      'pack also a Data analytics (Power BI, i2) i learned many '
                      'language progrmmaing as Python, C, Kotlin, Java, Pascal, SQL ...',
                      style: GoogleFonts.caveat(
                        color: DarkMode.fontColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
                flex: 1,
                child: CircleAvatar(
                  minRadius: 50.0,
                  maxRadius: 300.0,
                  backgroundImage: AssetImage(
                    DarkMode.imgProfil,
                  ),
                )),
          ],
        ))
      ],
    );
  }
}
