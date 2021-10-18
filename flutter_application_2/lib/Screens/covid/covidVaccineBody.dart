// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/covid/covidVaccineMenu.dart';
import 'package:job/constants.dart';

class covidVaccineBody extends StatefulWidget {
  const covidVaccineBody({
    Key? key,
  }) : super(key: key);

  @override
  State<covidVaccineBody> createState() => _covidVaccineBodyState();
}

class _covidVaccineBodyState extends State<covidVaccineBody> {
  late int _value = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text("Nội dung khai báo",
                        style: kSubtitleStyle.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _value,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              _value = 1;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Tôi đã tiêm 1 mũi")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: _value,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              _value = 2;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Tôi đã tiêm 2 mũi")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: _value,
                          activeColor: Colors.orange,
                          onChanged: (val) {
                            setState(() {
                              this._value = 3;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Tôi là F0 đã khỏi bệnh")
                    ],
                  ),
                ],
              ),
            ),
            covidVaccineMenu(option: _value),
            covidVaccineMenu(option: 4),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
