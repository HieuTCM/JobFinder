import 'package:flutter/material.dart';
import 'package:job/constants.dart';
import 'package:job/models/company.dart';

class CompanyTab extends StatelessWidget {
  final Company? company;
  CompanyTab({this.company});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Text(
            "About Company",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
          Column(
            children: company!.aboutCompany!
                .map(
                  (e) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "•  ",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 35.0),
                      ),
                      Expanded(
                        child: Text(
                          "$e\n",
                          style: kSubtitleStyle.copyWith(
                            fontWeight: FontWeight.w300,
                            height: 1.5,
                            color: Color(0xFF5B5B5B),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
