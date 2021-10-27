import 'package:flutter/material.dart';
import 'package:job/Screens/applied/historyApplied.dart';
import 'package:job/Screens/profile/EditProfileBody.dart';
import 'package:job/Screens/profile/body.dart';
import 'package:job/Screens/profile/editProfileMenu.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:job/constants.dart';
import 'package:job/views/home.dart';
import 'package:job/views/markPage.dart';
import 'package:job/widgets/bottomAppbar.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 160, 0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kBlack,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Hồ Sơ Cá Nhân",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: editProfileMenu(),
      bottomNavigationBar: bottombar(),
    );
  }
}
