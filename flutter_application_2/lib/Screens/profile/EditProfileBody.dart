import 'package:flutter/material.dart';
import 'package:job/Screens/profile/profilePic.dart';
import 'package:job/Screens/profile/textboxInfo.dart';
import 'package:job/constants.dart';

class EditProfileBody extends StatefulWidget {
  @override
  State<EditProfileBody> createState() => _EditProfileBodyState();
}

bool _showPassword = true;
bool _editFullName = true;
bool _editAge = true;
bool _editPhone = true;
bool _editEmail = true;
bool _editAddress = true;
final _nameCon = TextEditingController();
final _ageCon = TextEditingController();
final _phoneCon = TextEditingController();
final _emailCon = TextEditingController();
final _addressCon = TextEditingController();
var _name = "Đặng Hà Trung Tuyển",
    _age = "18",
    _phone = "0932981370",
    _email = "trungtuyen00310@gmail.com",
    _address = "123, Lê Văn Việt, Quận 9";
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
        TextField(
          textAlign: TextAlign.left,
          onTap: () {
            _nameCon.selection = TextSelection(
                baseOffset: _nameCon.text.length,
                extentOffset: _nameCon.text.length);
          },
          keyboardType: TextInputType.text,
          controller: _nameCon..text = _name,
          readOnly: _editFullName,
          obscureText: false,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _editFullName = !_editFullName;
                  });
                },
                icon: Icon(
                  Icons.mode_edit_outline_outlined,
                  color: Colors.grey,
                ),
              ),
              contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
              labelText: "Họ và Tên",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(),
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          textAlign: TextAlign.left,
          onTap: () {
            _nameCon.selection = TextSelection(
                baseOffset: _ageCon.text.length,
                extentOffset: _ageCon.text.length);
          },
          keyboardType: TextInputType.number,
          controller: _ageCon..text = _age,
          readOnly: _editAge,
          obscureText: false,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _editAge = !_editAge;
                  });
                },
                icon: Icon(
                  Icons.mode_edit_outline_outlined,
                  color: Colors.grey,
                ),
              ),
              contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
              labelText: "Tuổi",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(),
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        SizedBox(
          height: 10,
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
        SizedBox(
          height: 15,
        ),
        TextField(
          textAlign: TextAlign.left,
          onTap: () {
            _nameCon.selection = TextSelection(
                baseOffset: _phoneCon.text.length,
                extentOffset: _phoneCon.text.length);
          },
          keyboardType: TextInputType.number,
          controller: _phoneCon..text = _phone,
          readOnly: _editPhone,
          obscureText: false,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _editPhone = !_editPhone;
                  });
                },
                icon: Icon(
                  Icons.mode_edit_outline_outlined,
                  color: Colors.grey,
                ),
              ),
              contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
              labelText: "Số điện thoại",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(),
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          textAlign: TextAlign.left,
          onTap: () {
            _nameCon.selection = TextSelection(
                baseOffset: _emailCon.text.length,
                extentOffset: _emailCon.text.length);
          },
          keyboardType: TextInputType.emailAddress,
          controller: _emailCon..text = _email,
          readOnly: _editEmail,
          obscureText: false,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _editEmail = !_editEmail;
                  });
                },
                icon: Icon(
                  Icons.mode_edit_outline_outlined,
                  color: Colors.grey,
                ),
              ),
              contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
              labelText: "Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(),
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          textAlign: TextAlign.left,
          onTap: () {
            _nameCon.selection = TextSelection(
                baseOffset: _addressCon.text.length,
                extentOffset: _addressCon.text.length);
          },
          keyboardType: TextInputType.number,
          controller: _addressCon..text = _address,
          readOnly: _editAddress,
          obscureText: false,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _editAddress = !_editAddress;
                  });
                },
                icon: Icon(
                  Icons.mode_edit_outline_outlined,
                  color: Colors.grey,
                ),
              ),
              contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
              labelText: "Địa chỉ",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(),
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
            print(_nameCon.text);
            print(_ageCon.text);
            print(valueq1);
            print(valueq2);
            print(_phoneCon.text);
            print(_emailCon.text);
            print(_addressCon.text);
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
