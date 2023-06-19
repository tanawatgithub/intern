import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern/service.dart';
import 'component.dart';
import 'domain/cycle.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern/utils.dart';
import 'package:flutter/cupertino.dart';

class cyclePage extends StatefulWidget {
  final String? txtname;
  final String? txtpassword;
  final String? txtorg;

   const cyclePage(this.txtname, this.txtpassword, this.txtorg);


  @override
  _cyclePageState createState() => _cyclePageState();
}

String dropdownValue = 'Option 1';

class Myclipper extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(1.sp, 1.sp, 50, 50);
  }

  @override
  bool shouldReclip(oldCliper) {
    return false;
  }
}

class _cyclePageState extends State<cyclePage> {



  List<Cycle> cycles = [];
  DateTime? selectedDate;

  int currentPage = 0; // หน้าปัจจุบันของข้อมูล

  @override
  void initState() {
    cyclef();
    super.initState();
  }

  cyclef() async {
    cycles = await CycleService().getCycles();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2023),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.90;

    return Container(
      // color:  Colors.grey,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding:
                EdgeInsets.fromLTRB(65 * fem, 31.5 * fem, 65 * fem, 26.5 * fem),
            width: double.infinity,
            height: 150 * fem,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 801.33 * fem, 0 * fem),
                  width: 220 * fem,
                  height: 82 * fem,
                  child: Image.asset(
                    'assets/images/zeenapplogo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      0 * fem, 18.5 * fem, 0 * fem, 0 * fem),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 7 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            4 * fem, 0 * fem, 0 * fem, 14.5 * fem),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 6 * fem, 2 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 158 * fem,
                              ),
                              child: Text(
                                'พิริยะ ณิทธิมนพันธ์ุ',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 0.9 * ffem / fem,
                                  //letterSpacing: 0.5 * fem,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              // useridauditor01zeencloud4mU (0:91)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 15 * fem),
                              child: Text(
                                'User ID : auditor01@zeen.cloud',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 0.3333333333 * ffem / fem,
                                  // letterSpacing: 0.400000006 * fem,
                                  color: Color(0xff6d7c84),
                                ),
                              ),
                            ),
                            Text(
                              // orgplus8FY (0:93)
                              'ORG : PLUS',
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 0.3571428571 * ffem / fem,
                                letterSpacing: 0.400000006 * fem,
                                color: Color(0xfffd7e18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // maskgroupqfk (0:96)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 12.5 * fem),
                        width: 60 * fem,
                        height: 60 * fem,
                        child: Image.asset(
                          'assets/images/mask-group.png',
                          width: 60 * fem,
                          height: 60 * fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // frame5270YaA (0:100)
            padding: EdgeInsets.fromLTRB(0 * fem, 9 * fem, 0 * fem, 0 * fem),
            width: double.infinity,
            height: 5 * fem,
            decoration: BoxDecoration(
              color: Color(0xffdc2529),
            ),
          ),
          //-----------------------------------------------------------------------------------
          SizedBox(
            child: Container(
              padding: EdgeInsets.fromLTRB(
                  20 * fem, 22 * fem, 42.17 * fem, 21 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // noB8a (0:109)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 99.17 * fem, 1 * fem),
                    child: Text(
                      'No.',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 25 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 0.64 * ffem / fem,
                        letterSpacing: 0.5 * fem,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    // cycleFu8 (0:115)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 99.17 * fem, 1 * fem),
                    child: Text(
                      'Cycle',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 25 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 0.64 * ffem / fem,
                        letterSpacing: 0.5 * fem,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    // frame5351m6n (0:116)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 99.17 * fem, 1 * fem),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // auditJ6i (0:117)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          child: Text(
                            'Audit',
                            style: TextStyle(
                              fontFamily: 'Kanit',
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 0.64 * ffem / fem,
                              letterSpacing: 0.5 * fem,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame5352kDc (0:119)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 99.17 * fem, 1 * fem),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // startdateVBC (0:120)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          child: Text(
                            'StartDate',
                            style: TextStyle(
                              fontFamily: 'Kanit',
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 0.64 * ffem / fem,
                              letterSpacing: 0.5 * fem,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame5353wot (0:122)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 154.17 * fem, 1 * fem),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // enddatetDL (0:123)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 9 * fem, 0 * fem),
                          child: Text(
                            'EndDate',
                            style: TextStyle(
                              fontFamily: 'Kanit',
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 0.64 * ffem / fem,
                              letterSpacing: 0.5 * fem,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame5354vQv (0:125)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // status4X8 (0:126)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          child: Text(
                            'Status',
                            style: TextStyle(
                              fontFamily: 'Kanit',
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 0.64 * ffem / fem,
                              letterSpacing: 0.5 * fem,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Container(
              //data
              padding:
                  EdgeInsets.fromLTRB(30 * fem, 26 * fem, 30 * fem, 26 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(2),
                ),
              ),
              child: Column(
                children: [
                  for (var cycle in cycles) ...[
                    CycleBlock(
                      orgID: cycle.orgID!,
                      cycle: cycle.cycle!,
                      startDate: cycle.startDate!,
                      endDate: cycle.endDate!,
                      status: cycle.status!
                    ),
                  ]
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
