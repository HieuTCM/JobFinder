import 'package:flutter/material.dart';
import 'package:job/Screens/profile/profilePic.dart';
import 'package:job/Screens/profile/textboxInfo.dart';
import 'package:job/constants.dart';

class EditProfileBody extends StatefulWidget {
  @override
  State<EditProfileBody> createState() => _EditProfileBodyState();
}

class _EditProfileBodyState extends State<EditProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        InfoTextBox(
            textField: "Họ và tên",
            placeHolderField: "Đặng Hà Trung Tuyển",
            isPasswordField: false),
        InfoTextBox(
            textField: "Tuổi", placeHolderField: "18", isPasswordField: false),
        SizedBox(
          height: 2,
        ),
        Container(
            margin: EdgeInsets.only(right: 300.0),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Text(
                    'Giới tính',
                    style: kTitleStyle,
                  ),
                ]))),
        Container(
          margin: EdgeInsets.only(right: 18.0),
          child: Row(
            children: <Widget>[
              Checkbox(
                value: valueq1,
                onChanged: (value) => setState(() {
                  this.valueq1 = value!;
                  this.valueq2 = !value;
                  ;
                }),
              ),
              Text('Nam'),
              SizedBox(
                width: 50,
              ),
              Checkbox(
                value: valueq2,
                onChanged: (value) => setState(() {
                  this.valueq2 = value!;
                  this.valueq1 = !value;
                  ;
                }),
              ),
              Text('Nữ'),
            ],
          ),
        ),
        InfoTextBox(
            textField: "Số điện thoại",
            placeHolderField: "0932981370",
            isPasswordField: false),
        InfoTextBox(
            textField: "E-mail",
            placeHolderField: "trungtuyen00310@gmail.com",
            isPasswordField: false),
        InfoTextBox(
            textField: "Địa chỉ",
            placeHolderField: "123, Lê Văn Việt, Quận 9",
            isPasswordField: false),
        // InfoTextBox(
        //     textField: "Mật khẩu",
        //     placeHolderField: "TuyenAhihi",
        //     isPasswordField: true),
      ],
    );
  }

  bool valueq1 = true;

  bool valueq2 = false;
}
