// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/covid/covidTestMenu.dart';

class covidTestBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            covidTestMenu(option: 1),
            covidTestMenu(option: 2),
            covidTestMenu(option: 3),
            covidTestMenu(option: 4),
            covidTestMenu(option: 5),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
