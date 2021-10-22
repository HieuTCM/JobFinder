// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/models/company.dart';
import 'package:job/models/data.dart';
import 'package:job/views/detail_history.dart';
import 'package:job/views/job_detail.dart';
import 'package:job/widgets/rencent_history.dart';

List<Application> applications = getApplications();

class appliedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recentHistoryList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        var recent = recentHistoryList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailHistory(
                  company: recent,
                ),
              ),
            );
          },
          child: RecentHistory(company: recent),
        );
      },
    );
  }
}

//   List<Widget> buildApplications() {
//     List<Widget> list = [];
//     for (var i = 0; i < applications.length; i++) {
//       list.add(appliedMenu(
//         application: applications[i],
//       ));
//     }
//     return list;
//   }
// }
