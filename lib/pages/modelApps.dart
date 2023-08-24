// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:portfolio/tools/myWidgets.dart';
import 'package:portfolio/tools/themes.dart';

class Model_page extends StatelessWidget {
  Model_page({Key? key}) : super(key: key);

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
            Expanded(flex: 4, child: BodyModel()),
            //===================================Foot=======================================
            FooterPages(),
          ],
        ),
      ),
    );
  }
}

class BodyModel extends StatelessWidget {
  BodyModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawScrollbar(
      thumbColor: DarkMode.buttonBackground,
      radius: Radius.circular(16),
      thickness: 7,
      child: SingleChildScrollView(
          child: Wrap(
            children: [
              tiket('assets/images/model/Ex_(14).jpg'),
              tiket('assets/images/model/Ex_(15).jpg'),
              tiket('images/model/Ex_(13).jpg'),
              tiket('images/model/Ex_(7).jpg'),
              tiket('images/model/Ex_(17).png'),
              tiket('images/model/Ex_(18).png'),
              tiket('images/model/Ex_(19).png'),
              tiket('images/model/Ex_(8).jpg'),
              tiket('images/model/Ex_(1).jpg'),
              tiket('images/model/Ex_(2).jpg'),
              tiket('images/model/Ex_(5).jpg'),
              tiket('images/model/Ex_(6).jpg'),
              tiket('images/model/Ex_(9).jpg'),
              tiket('images/model/Ex_(10).jpg'),
              tiket('images/model/Ex_(11).jpg'),
              tiket('images/model/Ex_(12).jpg'),
              tiket('images/model/Ex_(3).jpg'),
              tiket('images/model/Ex_(4).jpg'),
            ],
          )),
    );
  }

  Widget tiket(String lien) {
    return Container(
      width: 500.0,
      height: 500.0,
      padding: EdgeInsets.all(5.5),
      decoration: BoxDecoration(),
      child: Image.asset(
        lien,
        fit: BoxFit.fill,
      ),
      //Padding(padding: EdgeInsets.only(bottom: 10.0)),
    );
  }
}
