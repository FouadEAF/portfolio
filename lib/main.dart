
import 'package:flutter/material.dart';
import 'package:portfolio/pages/contactMe.dart';
import 'package:portfolio/pages/followMe.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/pages/modelApps.dart';
import 'package:portfolio/pages/whoIAm.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home_page(),
    routes: {
      'Home': (context) => Home_page(),
      'WhoIAm': (context) => WhoIAm_page(),
      'Model': (context) => Model_page(),
      'FollowMe': (context) => FollowMe_Page(),
      'ContactMe': (context) => ContactMe_Page(),
    },
  ));
}
