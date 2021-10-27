import 'package:flutter/material.dart';
import 'package:job/constants.dart';
import 'package:job/models/company.dart';
import 'package:job/views/home.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job/views/job_detail.dart';
import 'package:job/views/markPage.dart';
import 'package:job/widgets/bottomAppbar.dart';
import 'package:job/widgets/recent_job_card.dart';

class searchPage extends StatefulWidget {
  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
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
          "Tìm kiếm",
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
                'Tên công việc',
                style: kTitleStyle,
              ),
              SizedBox(height: 10.0),
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
                            border: InputBorder.none,
                            hintText: "Nhập tên công việc",
                            hintStyle: kSubtitleStyle.copyWith(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Chọn ngành nghề',
                style: kTitleStyle,
              ),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.only(left: 18.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    iconSize: 36,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: kBlack,
                    ),
                    value: job,
                    isExpanded: true,
                    items: jobs.map(bulidMenuJob).toList(),
                    onChanged: (job) => setState(() {
                      this.job = job;
                    }),
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 2,
              ),
              SizedBox(height: 18.0),
              Container(
                margin: EdgeInsets.only(left: 70.0),
                width: 250,
                child: SizedBox(
                  height: 35.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => searchPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kBlack,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      "Tìm kiếm",
                      style: kTitleStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Danh sách công việc",
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
      bottomNavigationBar: bottombar(),
    );
  }

  final jobs = [
    'Bán hàng - Kinh doanh',
    'Du lịch - Vận tải',
    'Tiếp thị - Quảng cáo',
    'Tư vấn',
    'CNTT - Phần mềm',
    'Giáo dục - Đào tạo',
  ];
  String? job;
  DropdownMenuItem<String> bulidMenuJob(String job) => DropdownMenuItem(
      value: job,
      child: Text(
        job,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
}
