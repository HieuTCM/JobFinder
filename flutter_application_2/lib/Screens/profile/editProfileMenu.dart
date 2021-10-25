// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/covid/covidMainScreen.dart';
import 'package:job/Screens/covid/covidTest.dart';
import 'package:job/Screens/covid/covidVaccine.dart';
import 'package:job/Screens/edu/eduMainScreen.dart';
import 'package:job/Screens/exp/expMainScreen.dart';
import 'package:job/Screens/profile/EditProfileBody.dart';
import 'package:job/Screens/profile/covidPassport.dart';
import 'package:job/Screens/profile/edu.dart';
import 'package:job/Screens/profile/exp.dart';
import 'package:job/Screens/profile/skillMenu.dart';
import 'package:job/Screens/profile/skillMenu2.dart';
import 'package:job/Screens/skill/skillMainScreen.dart';
import 'package:job/constants.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/qrCode.dart';

class editProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int covidLevel = Random().nextInt(5);
    // int exp = Random().nextInt(2);
    // int edu = Random().nextInt(2);
    // int skill = Random().nextInt(2);
    int covidLevel = 3;
    int exp = 2;
    int edu = 2;
    int skill = 2;
    //print(covidLevel);
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
                "Thông tin cá nhân",
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
                "Cập nhật thông tin",
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
                "Giấy xét nghiệm",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          covidCart(
              status: "Có giấy xác nhận âm tính",
              level: "1",
              fDate: "15/10/2021",
              sDate: "null"),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => covidTest()));
            },
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
                    Colors.blueAccent,
                    Colors.blue.shade800,
                  ])),
              padding: const EdgeInsets.all(0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Cập nhật thông tin giấy xét nghiệm",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),

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
                "COVID Passport",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: covidLevel == 0
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (Expanded(
                        child: Text(
                            "Chưa có thông tin! Nếu bạn đã tiêm vaccine hoặc là F0 đã khỏi bệnh, hãy khai báo để được ưu tiên duyệt đi làm."),
                      )),
                    ],
                  )
                : covidLevel == 1
                    ? (covidCart(
                        status: "Có giấy xác nhận âm tính",
                        level: "1",
                        fDate: "15/10/2021",
                        sDate: "null"))
                    : covidLevel == 2
                        ? (covidCart(
                            status: "Đã tiêm 1 mũi",
                            level: "2",
                            fDate: "15/10/2021",
                            sDate: "null"))
                        : covidLevel == 3
                            ? (covidCart(
                                status: "Đã tiêm 2 mũi",
                                level: "3",
                                sDate: "15/10/2021",
                                fDate: "05/07/2021"))
                            : covidLevel == 4
                                ? (covidCart(
                                    status: "F0 đã khỏi bệnh",
                                    level: "3",
                                    fDate: "15/10/2021",
                                    sDate: "null"))
                                : null,
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => qrCodeView()));
            },
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
                    Colors.blueAccent,
                    Colors.blue.shade800,
                  ])),
              padding: const EdgeInsets.all(0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "QR code xác nhận tiêm chủng",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        color: kBlack,
                        onPressed: () {},
                        icon: Icon(
                          Icons.qr_code,
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => covidVaccine()));
            },
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
                    Colors.blueAccent,
                    Colors.blue.shade800,
                  ])),
              padding: const EdgeInsets.all(0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Cập nhật thông tin tiêm chủng",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
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
            child: exp == 0
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (Expanded(
                        child: Text(
                            "Điền thông tin về các công việc bạn đã từng làm trước đây để làm đẹp hồ sơ và tăng khả năng được duyệt khi nhận việc"),
                      )),
                    ],
                  )
                : expCart(
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
            child: exp == 0
                ? null
                : expCart(
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => expMainScreen()));
            },
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
            child: edu == 0
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (Expanded(
                        child: Text(
                            "Bạn chưa có thông tin học vấn của mình trên JobsGO"),
                      )),
                    ],
                  )
                : eduCart(
                    schoolName: "Đại học FPT",
                    majorName: "Kỹ sư phần mềm",
                    dateWorkin: "15/09/2017",
                    dateWorkout: "Hiện nay"),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eduMainScreen()));
            },
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
            child: skill == 0
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (Expanded(
                        child: Text(
                            "Cập nhật kỹ năng của bạn để gây ấn tượng với nhà tuyển dụng"),
                      )),
                    ],
                  )
                : skillMenu(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: skill == 0 ? null : skillMenu2(),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => skillMainScreen()));
            },
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
