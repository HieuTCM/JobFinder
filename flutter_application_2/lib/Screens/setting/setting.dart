import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/constants.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
          "Cài Đặt",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Tài Khoản",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Đổi mật khẩu"),
            buildAccountOptionRow(context, "Liên Kết mạng xã hội"),
            buildAccountOptionRow(context, "Ngôn ngữ và khu vực"),
            buildAccountOptionRow(context, "Quyền riêng tư"),
            buildAccountOptionRow(context, "Hỗ trợ"),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Nhận Thông Báo Qua",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("Thông báo đẩy", value1),
            buildNotificationOptionRow("Email", value2),
          ],
        ),
      ),
    );
  }

  bool value1 = false;
  bool value2 = false;
  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) => setState(() {
                if (title == 'Thông báo đẩy') {
                  this.value1 = val;
                } else {
                  this.value2 = val;
                }
              }),
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
