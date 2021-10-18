// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/profile/EditProfileBody.dart';
import 'package:job/Screens/profile/edu.dart';
import 'package:job/Screens/profile/exp.dart';
import 'package:job/Screens/profile/skill.dart';
import 'package:job/Screens/profile/skillMenu.dart';
import 'package:job/Screens/profile/skillMenu2.dart';

class editProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(left: 20, top: 25, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Tài khoản",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          Container(
            child: EditProfileBody(),
          ),

          //------------------------------------
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Kinh nghiệm làm việc",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          Container(
            child: expCart(
                companyName: "Công ty phần mềm FPT",
                positionName: "Developer",
                dateWorkin: "15/07/2021",
                dateWorkout: "03/10/2021",
                countTime: " (3 Tháng)"),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: expCart(
                companyName: "Ministop",
                positionName: "Nhân viên bán hàng",
                dateWorkin: "10/03/2020",
                dateWorkout: "15/08/2020",
                countTime: " (5 Tháng)"),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: new LinearGradient(colors: [
                    Color.fromARGB(255, 255, 136, 34),
                    Color.fromARGB(255, 255, 177, 41)
                  ])),
              padding: const EdgeInsets.all(0),
              child: Text(
                "Thêm kinh nghiệm",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //------------------------------------
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Học vấn",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          Container(
            child: eduCart(
                schoolName: "Đại học FPT",
                majorName: "Kỹ sư phần mềm",
                dateWorkin: "15/09/2017",
                dateWorkout: "Hiện nay"),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: new LinearGradient(colors: [
                    Color.fromARGB(255, 255, 136, 34),
                    Color.fromARGB(255, 255, 177, 41)
                  ])),
              padding: const EdgeInsets.all(0),
              child: Text(
                "Thêm học vấn",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //------------------------------------
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Kỹ năng",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          Container(
            child: skillMenu(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: skillMenu2(),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: new LinearGradient(colors: [
                    Color.fromARGB(255, 255, 136, 34),
                    Color.fromARGB(255, 255, 177, 41)
                  ])),
              padding: const EdgeInsets.all(0),
              child: Text(
                "Thêm kỹ năng",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //------------------------------------
        ],
      ),
    );
  }
}
