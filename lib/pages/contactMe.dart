// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/tools/myWidgets.dart';
import 'package:portfolio/tools/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe_Page extends StatelessWidget {
  ContactMe_Page({Key? key}) : super(key: key);

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
            Expanded(flex: 4, child: BodyContactMe()),
//===================================Foot=======================================
            FooterPages(),
          ],
        ),
      ),
    );
  }

  Widget BodyContactMe() {
    TextEditingController _emailSender = TextEditingController();
    TextEditingController _subject = TextEditingController();
    TextEditingController _emailBody = TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300.0,
            child: TextField(
              controller: _emailSender,
              style: TextStyle(color: DarkMode.fontColor),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text('Your Email'),
                labelStyle: TextStyle(color: DarkMode.fontColor),
                hintText: 'name@exemple.com',
                hintStyle: TextStyle(color: DarkMode.fontColor),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.redAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            width: 300.0,
            child: TextField(
              controller: _subject,
              style: TextStyle(color: DarkMode.fontColor),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text('Object'),
                labelStyle: TextStyle(color: DarkMode.fontColor),
                hintText: 'About what this message?',
                hintStyle: TextStyle(color: DarkMode.fontColor),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.redAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            width: 300.0,
            height: 300.0,
            child: TextField(
              controller: _emailBody,
              style: TextStyle(color: DarkMode.fontColor),
              keyboardType: TextInputType.text,
              maxLines: 10,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                label: Text('Message text'),
                labelStyle: TextStyle(color: DarkMode.fontColor),
                hintText: 'Content message',
                hintStyle: TextStyle(color: DarkMode.fontColor),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.redAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            width: 200.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: TextButton.icon(
              label: Text(
                'Send Email',
                style: TextStyle(
                    color: DarkMode.fontColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              icon: Icon(
                Icons.mail,
                color: DarkMode.fontColor,
              ),
              onPressed: () async {
                String email = _emailSender.text;
                String subject = _subject.text;
                String body = _emailBody.text;
                String emailUrl = "mailto:$email?subject=$subject&body=$body";

                if (await canLaunch(emailUrl)) {
                  await launch(emailUrl);
                } else {
                  throw "Error occured sending an email";
                }
              },
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: 200.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 89, 197, 0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: TextButton.icon(
              label: Text(
                'Send message',
                style: TextStyle(
                    color: DarkMode.fontColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              icon: FaIcon(
                FontAwesomeIcons.whatsapp,
                color: DarkMode.fontColor,
              ),
              onPressed: () async {
                String body = _emailBody.text;
                String emailUrl =
                    "https://api.whatsapp.com/send?phone=+212645994904&text=$body";

                if (await canLaunch(emailUrl)) {
                  await launch(emailUrl);
                } else {
                  throw "Error occured sending a message";
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
