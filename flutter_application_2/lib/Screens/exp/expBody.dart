import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class expBody extends StatefulWidget {
  const expBody({
    Key? key,
  }) : super(key: key);

  @override
  State<expBody> createState() => _expBodyState();
}

final _controller = TextEditingController();

class _expBodyState extends State<expBody> {
  DateTime date = DateTime.now();
  String dateString = "";
  String dateString2 = "";
  bool value = false;
  Future<Null> selectDatePicker(BuildContext) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2000),
        lastDate: date);
    if (picked != null) {
      setState(() {
        dateString = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  Future<Null> selectDatePicker2(BuildContext) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2000),
        lastDate: date);
    if (picked != null) {
      setState(() {
        dateString2 = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 4),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(bottom: 20, top: 20, left: 20),
                    labelText: "Tên công ty/ cửa hàng",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(bottom: 20, top: 20, left: 20),
                    labelText: "Công việc",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: value
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            child: TextField(
                              controller: TextEditingController()
                                ..text = dateString.toString(),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectDatePicker(context);
                                    });
                                  },
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 20, top: 20, left: 20),
                                border: OutlineInputBorder(),
                                labelText: "Ngày bắt đầu",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: Checkbox(
                                    value: value,
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value!;
                                      });
                                    }),
                                title: Text("Vẫn đang làm công việc này"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            child: TextFormField(
                              maxLines: 5,
                              keyboardType: TextInputType.multiline,
                              controller: TextEditingController()
                                ..text = dateString.toString(),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    bottom: 20, top: 20, left: 20),
                                border: OutlineInputBorder(),
                                labelText: "Mô tả công việc",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                            ),
                          ),
                        ])
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            child: TextField(
                              controller: TextEditingController()
                                ..text = dateString.toString(),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectDatePicker(context);
                                    });
                                  },
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 20, top: 20, left: 20),
                                border: OutlineInputBorder(),
                                labelText: "Ngày bắt đầu",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            child: TextField(
                              controller: TextEditingController()
                                ..text = dateString2.toString(),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectDatePicker2(context);
                                    });
                                  },
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 20, top: 20, left: 20),
                                border: OutlineInputBorder(),
                                labelText: "Ngày kết thúc",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: Checkbox(
                                    value: value,
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value!;
                                      });
                                    }),
                                title: Text("Vẫn đang làm công việc này"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            child: TextFormField(
                              maxLines: 5,
                              controller: TextEditingController()
                                ..text = dateString.toString(),
                              textAlign: TextAlign.left,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    bottom: 20, top: 20, left: 20),
                                border: OutlineInputBorder(),
                                labelText: "Mô tả công việc",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                            ),
                          ),
                        ]),
            ),
          ],
        ),
      ),
    );
  }
}
