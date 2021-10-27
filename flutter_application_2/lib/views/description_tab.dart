import 'package:flutter/material.dart';
import 'package:job/constants.dart';
import 'package:job/models/company.dart';

class DescriptionTab extends StatelessWidget {
  final Company? company;
  DescriptionTab({this.company});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Text(
            "Hạn nộp hồ sơ :  \t" + company!.time!,
            style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25.0),
          Text(
            "Thù lao & thời gian làm việc",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          Column(
            children: company!.salaryDetail!
                .map(
                  (e) => Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "•  ",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 35.0),
                      ),
                      Expanded(
                        child: Text(
                          "$e",
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
          ),
          SizedBox(height: 25.0),
          Text(
            "Mô tả công việc",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            company!.jobOpportunity!,
            style: kSubtitleStyle.copyWith(
              fontWeight: FontWeight.w300,
              height: 1.5,
              color: Color(0xFF5B5B5B),
            ),
          ),
          SizedBox(height: 25.0),
          Text(
            "Yêu cầu công việc",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          Column(
            children: company!.jobResponsbilities!
                .map(
                  (e) => Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "•  ",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 35.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Expanded(
                          child: Text(
                            "$e",
                            style: kSubtitleStyle.copyWith(
                              fontWeight: FontWeight.w300,
                              height: 1.5,
                              color: Color(0xFF5B5B5B),
                            ),
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
