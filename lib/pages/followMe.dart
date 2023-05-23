// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/tools/myWidgets.dart';
import 'package:portfolio/tools/themes.dart';

class FollowMe_Page extends StatelessWidget {
  FollowMe_Page({Key? key}) : super(key: key);

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
            Expanded(flex: 4, child: BodyFollowMe()),
//===================================Foot=======================================
            FooterPages(),
          ],
        ),
      ),
    );
  }

  Widget BodyFollowMe() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: CircleAvatar(
              minRadius: 50.0,
              maxRadius: 400.0,
              backgroundImage: AssetImage(DarkMode.imgProfil),
            )),
        SizedBox(
          height: 30.0,
        ),
        Text(
          'Plaese follow me on my social network,',
          style: TextStyle(
              color: DarkMode.fontColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'for growing up our community',
          style: TextStyle(
              color: DarkMode.fontColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30.0,
        ),
        FollowButton(
          LabelButton: 'GitHub',
          IconName: FontAwesomeIcons.github,
          BackColor: Color(0xff7C7A7A),
          Link: 'https://github.com/FouadEAF',
        ), //FaIcon(FontAwesomeIcons.github)
        SizedBox(
          height: 10.0,
        ),
        FollowButton(
          LabelButton: 'Linkedln',
          IconName: FontAwesomeIcons.linkedin,
          BackColor: Color(0xff0961B8),
          Link: 'https://www.linkedin.com/in/fouad-el-azbi/',
        ),
        SizedBox(
          height: 10.0,
        ),
        FollowButton(
          LabelButton: 'Twitter',
          IconName: FontAwesomeIcons.twitter,
          BackColor: Color(0xff1c98e5),
          Link: 'https://twitter.com/el_azbi',
        ),
        SizedBox(
          height: 10.0,
        ),
        FollowButton(
          LabelButton: 'Youtube',
          IconName: FontAwesomeIcons.youtube,
          BackColor: Color.fromARGB(255, 228, 32, 32),
          Link: 'https://www.youtube.com/FouadE0F',
        ),
        SizedBox(
          height: 10.0,
        ),
        FollowButton(
          LabelButton: 'Facebook',
          IconName: FontAwesomeIcons.facebook,
          BackColor: Color(0xff0034B7),
          Link: 'https://www.facebook.com/DevelopperEAF',
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
