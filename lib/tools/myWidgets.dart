// ignore_for_file: sort_child_properties_last, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/tools/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderPages extends StatelessWidget {
  const HeaderPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeadButton(
              Title: 'Home',
              PageName: 'Home',
            ),
            SizedBox(
              width: 5.0,
            ),
            HeadButton(
              Title: 'Model',
              PageName: 'Model',
            ),
            SizedBox(
              width: 5.0,
            ),
            HeadButton(
              Title: 'Follow me',
              PageName: 'FollowMe',
            ),
            SizedBox(
              width: 5.0,
            ),
            HeadButton(
              Title: 'Contact me',
              PageName: 'ContactMe',
            ),
            Spacer(),
            Image.asset(
              'images/EAFLogo2.jpg',
              width: 50.0,
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
          ],
        ),
        Divider(
          color: Color(0xff7C7A7A),
        ),
      ],
    );
  }
}

class HeadButton extends StatelessWidget {
  String Title;
  String PageName;
  HeadButton({
    super.key,
    required this.Title,
    required this.PageName,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, PageName);
      },
      child: Text(
        Title,
        style: GoogleFonts.frijole(
          color: DarkMode.fontColor,
          fontWeight: FontWeight.bold,
          fontSize: 13.0,
        ),
      ),
      color: DarkMode.buttonBackground,
    );
  }
}

class FooterPages extends StatelessWidget {
  FooterPages({Key? key}) : super(key: key);
  DateTime sana = DateTime.now();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Text(
          'Developper EAF (C) 2022 - ${sana.year}',
          style: TextStyle(color: DarkMode.fontColor),
        ),
      ),
    );
  }
}

class FollowButton extends StatelessWidget {
  IconData IconName;
  Color BackColor;
  String LabelButton;
  String Link;
  FollowButton({
    required this.LabelButton,
    required this.IconName,
    required this.BackColor,
    required this.Link,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: BackColor,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: TextButton.icon(
        label: Text(
          LabelButton,
          style: TextStyle(
              color: DarkMode.fontColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        icon: FaIcon(
          IconName,
          color: DarkMode.fontColor,
        ),
        onPressed: () async {
          _launchUrl();
        },
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(Link))) {
      throw Exception('Could not launch $Link');
    }
  }
}
