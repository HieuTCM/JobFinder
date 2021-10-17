import 'package:flutter/material.dart';
import 'package:job/Screens/profile/profilePic.dart';
import 'package:job/Screens/profile/textboxInfo.dart';

class EditProfileBody extends StatelessWidget {
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
            textField: "Số điện thoại",
            placeHolderField: "0932981370",
            isPasswordField: false),
        InfoTextBox(
            textField: "E-mail",
            placeHolderField: "trungtuyen00310@gmail.com",
            isPasswordField: false),
        InfoTextBox(
            textField: "Mật khẩu",
            placeHolderField: "TuyenAhihi",
            isPasswordField: true),
      ],
    );
  }
}
