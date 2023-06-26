import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern/service.dart';
import 'component.dart';
import 'domain/cycle.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:number_pagination/number_pagination.dart';

class cyclePage extends StatefulWidget {
  final String? txtname;
  final String? txtpassword;
  final String? txtorg;

  const cyclePage(this.txtname, this.txtpassword, this.txtorg);

  @override
  _cyclePageState createState() => _cyclePageState();
}

//String dropdownValue = 'Option 1';

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
  String dropdownValue = 'Status';
  DateTime? selectedDateStart;
  DateTime? selectedDateEnd;

  int numberOfPages = 10;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    cyclef();
  }

  void cyclef() async {
    cycles = await CycleService().getCycles();
  }

  void filterDataByDate1(DateTime startDate) {
    setState(() {
      cycles = cycles.where((cycle) {
        if (cycle.startDate != null) {
          DateTime cycleStartDate = DateTime.parse(cycle.startDate!);
          return cycleStartDate.isAtSameMomentAs(startDate);
        }
        return false;
      }).toList();
    });
  }

  void filterDataByDate(DateTime endDate) {
    setState(() {
      cycles = cycles.where((cycle) {
        if (cycle.endDate != null) {
          DateTime cycleEndDate = DateTime.parse(cycle.endDate!);
          return cycleEndDate.isAtSameMomentAs(endDate);
        }
        return false;
      }).toList();
    });
  }

  Future<void> _selectDateStart(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateStart ?? DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2024),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDateStart = pickedDate;
        print(pickedDate);
      });
      filterDataByDate1(selectedDateStart!);
    }
  }

  Future<void> _selectDateEnd(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateEnd ?? DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2024),
    );
    if (pickedDate != null) {
      setState(() {
        selectedDateEnd = pickedDate;
        print(pickedDate);
      });
      filterDataByDate(selectedDateEnd!);
    }
  }

  void filterDataByStatus(String status) async {
    setState(() {
      if (status == "ALL") {
        // Show all statuses
        cyclef();
      } else {
        // Filter by the selected status
        cycles = cycles.where((cycle) => cycle.status == status).toList();
      }
    });
  }

  void filterDataByUser(String user){
    setState(() {
      if (user == "ChangePassword"){

      }
      else if (user == "Logout"){

      }
      else {

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.90;

    var pages = List.generate(
      numberOfPages,
      (index) => Center(),
    );

    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(65 * fem, 17.5 * fem, 65 * fem, 12.5 * fem),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 800 * fem, 0 * fem),
                      width: 220.67 * fem,
                      height: 82.75 * fem,
                      child: Image.asset(
                        'assets/images/zeenapplogo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0 * fem, 18.5 * fem, 0 * fem, 0 * fem),
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 7 * fem, 0 * fem),
                                padding: EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 12.5 * fem),
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 5 * fem, 6 * fem, 4 * fem),
                                      constraints: BoxConstraints(
                                        maxWidth: 189 * fem,
                                      ),
                                      child: Text(
                                        'พรพจน์ ศรีวิชยางกูร',
                                        style: TextStyle(
                                          fontFamily: 'Kanit',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 2 * ffem / fem,
                                          letterSpacing: 0.5 * fem,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10* fem),
                                      child: Text(
                                        'User ID : ${widget.txtname}',
                                        style: TextStyle(
                                          fontFamily: 'Kanit',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.3125 * ffem / fem,
                                          letterSpacing: 0.400000006 * fem,
                                          color: Color(0xff6d7c84),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                      child: Text(
                                        'ORG : ${widget.txtorg}',
                                        style: TextStyle(
                                          fontFamily: 'Kanit',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.2083333333 * ffem / fem,
                                          letterSpacing: 0.400000006 * fem,
                                          color: Color(0xfffd7e18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
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
            //------------------------------------ //-----------------------------------------------------------------------------------//
            SizedBox(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        30 * fem, 22 * fem, 42.17 * fem, 21 * fem),
                    //width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          // noB8a (0:109)
                          margin: EdgeInsets.fromLTRB(
                              50 * fem, 0 * fem, 0 * fem, 1 * fem),
                          child: Expanded(
                            flex: 1,
                            child: Text(
                              'No.',
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 0.64 * ffem / fem,
                                letterSpacing: 0.5 * fem,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // cycleFu8 (0:115)
                          margin: EdgeInsets.fromLTRB(
                              75 * fem, 0 * fem, 180 * fem, 1 * fem),
                          child: Expanded(
                            flex: 2,
                            child: Text(
                              'Cycle',
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 0.64 * ffem / fem,
                                letterSpacing: 0.5 * fem,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // frame5351m6n (0:116)
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 0 * fem, 109.17 * fem, 1 * fem),
                          child: Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  'Audit',
                                  style: TextStyle(
                                    fontFamily: 'Kanit',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 0.64 * ffem / fem,
                                    letterSpacing: 0.5 * fem,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_outlined,
                                  size: 30 * ffem,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // frame5352kDc (0:119)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 109.17 * fem, 1 * fem),
                          child: Expanded(
                            flex: 1,
                            child: ElevatedButton.icon(
                              onPressed: () => _selectDateStart(context),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              label: Text(
                                 'StartDate',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              icon:
                              Icon(Icons.calendar_month, color: Colors.black),
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 154.17 * fem, 1 * fem),
                            child: ElevatedButton.icon(
                              onPressed: () => _selectDateEnd(context),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              label: Text(
                                 'EndDate',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              icon: Icon(Icons.calendar_month, color: Colors.black),
                            ),
                          ),
                        ),

                        Container(
                          // frame5354vQv (0:125)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 80 * fem, 0 * fem),
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    highlightColor: Colors
                                        .orange, // Set the highlight color here
                                  ),
                                  // status4X8 (0:126)
                                  //margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  child: PopupMenuButton<String>(
                                    onSelected: (String status) {
                                      filterDataByStatus(status);
                                    },
                                    itemBuilder: (BuildContext context) {
                                      return <PopupMenuEntry<String>>[
                                        PopupMenuItem<String>(
                                          value: 'ALL',
                                          child: Text('ALL'),
                                        ),
                                        PopupMenuItem<String>(
                                          value: 'DONE',
                                          child: Text('DONE'),
                                        ),
                                        PopupMenuItem<String>(
                                          value: 'CANCEL',
                                          child: Text('CANCEL'),
                                        ),
                                        PopupMenuItem<String>(
                                          value: 'IN_PROGRESS',
                                          child: Text('IN_PROGRESS'),
                                        ),
                                      ];
                                    },
                                    child: Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Text(
                                            dropdownValue,
                                            style: TextStyle(
                                              fontFamily: 'Kanit',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 0.64 * ffem / fem,
                                              letterSpacing: 0.5 * fem,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down_outlined,
                                            size: 30 * ffem,
                                            color: Colors.black,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: FutureBuilder<List<Cycle>>(
                    future: Future.delayed(Duration(seconds: 1), () => cycles),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator(color: Colors.orange,);
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        cyclef();
                        return SizedBox(
                          child: Container(
                            // Container to display the data
                            padding: EdgeInsets.fromLTRB(30 * fem, 26 * fem, 30 * fem, 26 * fem),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(2),
                              ),
                            ),
                            child: Column(
                              children: [
                                for (var i = 0; i < cycles.length; i++) ...[
                                  SizedBox(
                                    width: double.infinity,
                                    child: Container(
                                      // Container properties
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: CycleBlock(
                                        org: cycles[i].orgID!,
                                        cycle: cycles[i].cycle!,
                                        startDate: cycles[i].startDate!,
                                        endDate: cycles[i].endDate!,
                                        status: cycles[i].status!,
                                        index: i + 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),

              // ตัวเลข page ////
            Container(
              child: pages[currentPage],
            ),
            NumberPagination(
              pageInit: numberOfPages,
              colorSub: Colors.white,
              colorPrimary: Colors.orange,
              //numberPages: numberOfPages,
              pageTotal: 9,
              //currentPage: currentPage,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
            ],
          ),
          );
        },
      ),
    );
  }
}
