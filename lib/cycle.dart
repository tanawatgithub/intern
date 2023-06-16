import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:http/http.dart';

class cyclePage extends StatefulWidget {
  final String? txtname;
  final String? txtpassword;
  final String? txtorg;

  const cyclePage(this.txtname, this.txtpassword, this.txtorg);

  @override
  _cyclePageState createState() => _cyclePageState();
}
String dropdownValue = 'Option 1';

class Myclipper extends CustomClipper<Rect>{
  Rect getClip(Size size){
    return Rect.fromLTWH(1.sp, 1.sp, 50, 50);
  }

  @override
  bool shouldReclip(oldCliper) {
   return false;
  }
}

class _cyclePageState extends State<cyclePage> {
  List<String> items = ['IN_PROGRESS', 'DONE', 'NEW', 'CANCEL'];
  List<String> items1 = ['2023-06-16','2023-06-15','2023-06-14','2023-06-13','2023-06-12','2023-06-11','2023-06-10','2023-06-09','2023-06-08','2023-06-07','2023-06-06','2023-06-05','2023-06-04','2023-06-03','2023-06-02','2023-06-01'];
  List<String> items2 = ['2023-06-16','2023-06-15','2023-06-14','2023-06-13','2023-06-12','2023-06-11','2023-06-10','2023-06-09','2023-06-08','2023-06-07','2023-06-06','2023-06-05','2023-06-04','2023-06-03','2023-06-02','2023-06-01'];
  String? selectedItem;
  String? selectedItem1;
  String? selectedItem2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 220.67, maxHeight: 82.75),
                  width: 220.67,
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/Zeenlogo1.png',
                          width: 150,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'ยินดีต้อนรับ',
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                          Text(
                            'คุณ : ${widget.txtname}',
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                          Text(
                            'Org คือ  :   ${widget.txtorg} ',
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ],
                      ),
                      ClipOval(
                        clipper: Myclipper(),
                        child: Image.asset(
                          'assets/images/Zebra 1.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(2.0),
            child: Container(
              color: Colors.red, // สีแดง
              height: 2.0, // ความสูงของเส้นขอบ
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 120.h,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(2),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'No.',
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Cycle',
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Audit',
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            DropdownButton<String>(
                              hint: Text('StartDate'),
                              value: selectedItem2,
                              items: items2
                                  .map(
                                    (item2) => DropdownMenuItem<String>(
                                  value: item2,
                                  child: Text(
                                    item2,
                                    style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                                  .toList(),
                              onChanged: (item2) => setState(() => selectedItem2 = item2),
                            ),
                            DropdownButton<String>(
                              hint: Text('EndDate'),
                              value: selectedItem1,
                              items: items1
                                  .map(
                                    (item1) => DropdownMenuItem<String>(
                                  value: item1,
                                  child: Text(
                                    item1,
                                    style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                                  .toList(),
                              onChanged: (item1) => setState(() => selectedItem1 = item1),
                            ),
                            DropdownButton<String>(
                              hint: Text('Status'),
                              value: selectedItem,
                              items: items
                                  .map(
                                    (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                                  .toList(),
                              onChanged: (item) => setState(() => selectedItem = item),
                            ),
                            // Text(
                            //   'Status',
                            //   style: TextStyle(
                            //     fontFamily: 'Kanit',
                            //     fontWeight: FontWeight.bold,
                            //     fontSize: 20,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 65.sp, vertical: 5.sp),
                  child: Container(
                    height: 120.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(2),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1.',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'FMGT_2023_01_01',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '524',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '2023-01-01',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '2023-01-31',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'DONE',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
