import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(74),
        child: AppBar(
          backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/Zeenlogo1.png',
                width: 170.67.sp,
                height: 60.75.sp,
              ),
            ),
            DropdownButton<String>(
              // Dropdown ที่ 1
              value: 'Option 1',
              onChanged: (String? newValue) {
                // ทำอะไรสักอย่างเมื่อผู้ใช้เลือกตัวเลือกใน Dropdown ที่ 1
              },
              items: <String>['Option 1', 'Option 2', 'Option 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              // Dropdown ที่ 2
              value: 'Option A',
              onChanged: (String? newValue) {
                // ทำอะไรสักอย่างเมื่อผู้ใช้เลือกตัวเลือกใน Dropdown ที่ 2
              },
              items: <String>['Option A', 'Option B', 'Option C']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              // Dropdown ที่ 3
              value: 'Choice X',
              onChanged: (String? newValue) {
                // ทำอะไรสักอย่างเมื่อผู้ใช้เลือกตัวเลือกใน Dropdown ที่ 3
              },
              items: <String>['Choice X', 'Choice Y', 'Choice Z']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1555.0.sp),
                  child: Text(
                    'ยินดีต้อนรับ',
                    style: TextStyle(fontSize: 11, color: Colors.black),
                  ),
                ),
                Text(
                  'คุณ : ${widget.txtname}',
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
                Text(
                  'Password ของคุณ คือ : ${widget.txtpassword}',
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
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 65.sp, vertical: 5.sp),
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
                          Text('No.' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                          Text('Cycle' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                          Text('Audit' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                          Text('StartDate' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                          Text('EndDate' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                          Text('Status' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 65.sp, vertical: 5.sp),
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
                    Text('1.' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                    Text('FMGT_2023_01_0' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                    Text('524', style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                    Text('2023-01-01' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                    Text('2023-01-31' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                    Text('DONE' , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
