import 'package:flutter/material.dart';
import 'package:job/Screens/profile/profilePic.dart';
import 'package:job/Screens/profile/textboxInfo.dart';
import 'package:job/constants.dart';

class EditProfileBody extends StatefulWidget {
  @override
  State<EditProfileBody> createState() => _EditProfileBodyState();
}

final _testcontroller = TextEditingController();
// final _testcontroller = TextEditingController();
// final _testcontroller = TextEditingController();
// final _testcontroller = TextEditingController();
// final _testcontroller = TextEditingController();

class _EditProfileBodyState extends State<EditProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.person,
              color: Colors.black,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Thông tin cá nhân",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          height: 15,
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        ),
        InfoTextBox(
          textField: "Họ và tên",
          placeHolderField: "Đặng Hà Trung Tuyển",
          isPasswordField: false,
          isNumberField: false,
        ),
        InfoTextBox(
            textField: "Tuổi",
            placeHolderField: "18",
            isPasswordField: false,
            isNumberField: true),
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
            isPasswordField: false,
            isNumberField: true),
        InfoTextBox(
            textField: "E-mail",
            placeHolderField: "trungtuyen00310@gmail.com",
            isPasswordField: false,
            isNumberField: false),
        InfoTextBox(
            textField: "Địa chỉ",
            placeHolderField: "123, Lê Văn Việt, Quận 9",
            isPasswordField: false,
            isNumberField: false),
        TextField(
          textAlign: TextAlign.left,
          onTap: () {
            _testcontroller.selection =
                TextSelection(baseOffset: 20, extentOffset: 20);
          },
          keyboardType: TextInputType.text,
          controller: _testcontroller,
          readOnly: false,
          obscureText: false,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    editInfo = !editInfo;
                  });
                },
                icon: Icon(
                  Icons.mode_edit_outline_outlined,
                  color: Colors.grey,
                ),
              ),
              contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
              labelText: "Test",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(),
              //hintText: widget.placeHolderField,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        // InfoTextBox(
        //     textField: "Mật khẩu",
        //     placeHolderField: "TuyenAhihi",
        //     isPasswordField: true),
        RaisedButton(
          onPressed: () {
            print(_testcontroller.text);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0),
          child: Container(
            alignment: Alignment.center,
            height: 50.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: new LinearGradient(colors: [
                  Color.fromARGB(255, 255, 136, 34),
                  Color.fromARGB(255, 255, 177, 41)
                ])),
            padding: const EdgeInsets.all(0),
            child: Text(
              "Cập nhật thông tin",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  String test1 = "";
  bool valueq1 = true;

  bool valueq2 = false;
}
