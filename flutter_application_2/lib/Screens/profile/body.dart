// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/applied/historyApplied.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/Screens/profile/editprofile.dart';
import 'package:job/Screens/profile/profileMenu.dart';
import 'package:job/Screens/profile/profilePic.dart';
import 'package:job/Screens/setting/setting.dart';
import 'package:job/views/notifyList.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.0),
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ProfilePic(),
          SizedBox(
            height: 20,
          ),
          ProfileMenu(
              icon: "assets/account.svg",
              text: "Hồ Sơ Cá Nhân",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile()));
              }),
          ProfileMenu(
              icon: "assets/history.svg",
              text: "Lịch sử xin việc",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Applications()));
              }),
          ProfileMenu(
              icon: "assets/bell.svg",
              text: "Thông Báo",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NotifyList()));
              }),
          ProfileMenu(
              icon: "assets/setting.svg",
              text: "Cài Đặt",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              }),
          ProfileMenu(
              icon: "assets/logout.svg",
              text: "Đăng Xuất",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              }),
        ],
      )),
    );
  }
}
