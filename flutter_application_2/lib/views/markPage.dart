import 'package:flutter/material.dart';
import 'package:job/constants.dart';
import 'package:job/models/company.dart';
import 'package:job/views/home.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job/views/job_detail.dart';
import 'package:job/views/searchpage.dart';
import 'package:job/widgets/bottomAppbar.dart';
import 'package:job/widgets/recent_job_card.dart';
import 'package:job/widgets/recent_mark.dart';

class markPage extends StatefulWidget {
  @override
  State<markPage> createState() => _markPageState();
}

class _markPageState extends State<markPage> {
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
          "Lưu Trữ",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Text(
                "Các công việc đã lưu",
                style: kTitleStyle,
              ),
              ListView.builder(
                itemCount: recentList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  var recent = recentList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobDetail(
                            company: recent,
                          ),
                        ),
                      );
                    },
                    child: RecentMark(company: recent),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottombar(username: '',),
    );
  }
}
