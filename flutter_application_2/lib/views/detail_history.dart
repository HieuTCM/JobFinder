import 'package:flutter/material.dart';
import 'package:job/Screens/applied/historyApplied.dart';
import 'package:job/models/company.dart';
import 'package:job/constants.dart';
import 'package:job/models/notify_model.dart';
import 'package:job/views/company_tab.dart';
import 'package:job/views/description_tab.dart';
import 'package:job/views/home.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/notifyDetail.dart';

class DetailHistory extends StatelessWidget {
  final Company? company;
  final int index;
  DetailHistory({this.company, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 237, 231),
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
          company!.companyName!,
          style: kTitleStyle,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              color: kBlack,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NotifyDetail(
                          item: notifyList2[index],
                        )));
              },
              icon: Icon(
                Icons.notifications,
              )),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Container(
          width: double.infinity,
          // margin: EdgeInsets.only(top: 50.0),
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 250.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 70.0,
                        height: 51.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage(company!.image!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      company!.job!,
                      style: kTitleStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      company!.sallary!,
                      style: kSubtitleStyle,
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: company!.tag!
                          .map(
                            (e) => Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 5.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border:
                                    Border.all(color: kBlack.withOpacity(.5)),
                              ),
                              child: Text(
                                e,
                                style: kSubtitleStyle,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(height: 30.0),
                    Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(
                          color: kBlack.withOpacity(.2),
                        ),
                      ),
                      // borderRadius: BorderRadius.circular(12.0),
                      child: TabBar(
                        unselectedLabelColor: kBlack,
                        indicator: BoxDecoration(
                          color: kOrange,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        tabs: [
                          Tab(text: "M?? t???"),
                          Tab(text: "Th??ng tin"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: TabBarView(
                  children: [
                    DescriptionTab(company: company),
                    CompanyTab(company: company),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          padding: EdgeInsets.only(left: 18.0, bottom: 25.0, right: 18.0),
          // margin: EdgeInsets.only(bottom: 25.0),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(color: kBlack.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: IconButton(
                  icon: Icon(Icons.bookmark_border),
                  color: kBlack,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => markPage()));
                  },
                ),
              ),
              SizedBox(width: 15.0),
              Expanded(
                child: SizedBox(
                  height: 50.0,
                  child: "${company!.type}" != "Th??nh c??ng"
                      ? ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Applications()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: "${company!.type}" == "??ang ch???"
                                ? Colors.red
                                : "${company!.type}" == "Th??nh c??ng"
                                    ? Colors.green
                                    : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Text(
                            "${company!.type}" == "??ang ch???"
                                ? "H???y ????n xin vi???c"
                                : "${company!.type}" == "Th??nh c??ng"
                                    ? "Xin vi???c th??nh c??ng"
                                    : "Xin vi???c",
                            style: kTitleStyle.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                  "????n xin vi???c c???a b???n\n???? ???????c ch???p nh???n",
                                  textAlign: TextAlign.center,
                                  style: kTitleStyle.copyWith(
                                      color: Colors.green)),
                            ),
                          ],
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
