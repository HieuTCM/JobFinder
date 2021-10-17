// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/applied/appliedMenu.dart';
import 'package:job/models/data.dart';

List<Application> applications = getApplications();

class appliedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 32, left: 32, bottom: 8),
            child: Column(
              children: buildApplications(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildApplications() {
    List<Widget> list = [];
    for (var i = 0; i < applications.length; i++) {
      list.add(appliedMenu(
        application: applications[i],
      ));
    }
    return list;
  }
}
