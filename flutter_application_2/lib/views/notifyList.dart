import 'package:flutter/material.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:job/models/notify_model.dart';
import 'package:job/views/home.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/notifyDetail.dart';
import 'package:job/views/searchpage.dart';

class NotifyList extends StatelessWidget {
  final List<Notify> list = notifyList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 237, 231),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            title: Text('Thông báo'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 255, 160, 0),
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            // actions: <Widget>[
            //   SvgPicture.asset(
            //     "assets/user.svg",
            //     width: 25.0,
            //     color: kBlack,
            //   ),
            //   SizedBox(width: 18.0)
            // ],
          )),
      body: ListView.separated(
        itemCount: (list.length),
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final item = list[index];
          return ListTile(
            leading: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(item.img.toString()),
                      fit: BoxFit.cover)),
            ),
            title: Text(item.descpirtion.toString()),
/*             subtitle: Text(item.detail.toString()), */
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NotifyDetail(
                      item: notifyList[index],
                    ))),
            enabled: true,
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
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
