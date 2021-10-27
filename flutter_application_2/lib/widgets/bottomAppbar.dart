import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/applied/historyApplied.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:job/views/home.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/searchpage.dart';

class bottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
              icon: Icon(Icons.history),
              tooltip: 'History',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Applications()));
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
    );
  }
}
