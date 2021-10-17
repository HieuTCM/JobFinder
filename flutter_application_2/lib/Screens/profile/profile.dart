import 'package:flutter/material.dart';
import 'package:job/Screens/profile/body.dart';
import 'package:job/constants.dart';
import 'package:job/views/home.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/searchpage.dart';

class ProfileScreen extends StatelessWidget {
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
          "Tài Khoản",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 255, 160, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home),
                tooltip: 'Home',
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => searchPage()));
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.bookmark_border),
                tooltip: 'History',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => markPage()));
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.account_box),
                tooltip: 'Account',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
