// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:portfolio/tools/myWidgets.dart';
import 'package:portfolio/tools/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_page extends StatelessWidget {
  Home_page({Key? key}) : super(key: key);

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
            Expanded(flex: 4, child: BodyHome(context)),
//===================================Foot=======================================
            FooterPages(),
          ],
        ),
      ),
    );
  }

  Row BodyHome(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Image.asset('assets/images/EAF_off.png')),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'El Azbi Fouad',
              style: GoogleFonts.eater(
                color: DarkMode.fontColor,
                fontWeight: FontWeight.bold,
                fontSize: 60.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Developper EAF',
              style: GoogleFonts.bungeeShade(
                color: DarkMode.fontColor,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'WhoIAm');
                },
                child: Text(
                  'Read more..',
                  style: TextStyle(
                      color: DarkMode.fontColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
