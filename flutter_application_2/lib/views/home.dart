import 'package:flutter/material.dart';
import 'package:job/constants.dart';
import 'package:job/models/company.dart';
import 'package:job/views/job_detail.dart';
import 'package:job/views/markPage.dart';
import 'package:job/widgets/company_card.dart';
import 'package:job/widgets/company_card2.dart';
import 'package:job/widgets/recent_job_card.dart';
import 'package:job/views/manage_search.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:job/views/searchpage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 237, 231),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.0), // here the desired height
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 160, 0),
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                top: 12.0,
                bottom: 12.0,
                right: 12.0,
              ),
              // child: SvgPicture.asset(
              //   "assets/drawer.svg",
              //   color: kBlack,
              // ),
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
      body: Container(
        margin: EdgeInsets.only(left: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25.0),
              Text(
                "Chào Nguyen Van A",
                style: kPageTitleStyle,
              ),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 50.0,
                margin: EdgeInsets.only(right: 18.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: TextField(
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                            icon: IconButton(
                              icon: Icon(
                                Icons.search,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => searchPage()));
                              },
                              color: kBlack,
                            ),
                            border: InputBorder.none,
                            hintText: "Tìm theo tên công việc",
                            hintStyle: kSubtitleStyle.copyWith(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        iconSize: 40,
                        icon: Icon(Icons.manage_search_sharp),
                        tooltip: 'Filter',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mngSearch()));
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 35.0),
              Text(
                " Các công việc phổ biến",
                style: kTitleStyle,
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 190.0,
                child: ListView.builder(
                  itemCount: companyList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var company = companyList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JobDetail(
                              company: company,
                            ),
                          ),
                        );
                      },
                      child: (index % 2) == 0
                          ? CompanyCard(company: company)
                          : CompanyCard2(company: company),
                    );
                  },
                ),
              ),
              SizedBox(height: 35.0),
              Text(
                "Danh sách công việc mới cập nhật",
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
                    child: RecentJobCard(company: recent),
                  );
                },
              ),
            ],
          ),
        ),
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
