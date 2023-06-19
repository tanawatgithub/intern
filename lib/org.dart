import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern/service.dart';
import 'package:intl/intl.dart';
import 'package:number_pagination/number_pagination.dart';

import 'component.dart';
import 'domain/cycle.dart';

class cyclePage extends StatefulWidget {
  final String? txtname;
  final String? txtpassword;
  final String? txtorg;

  const cyclePage(this.txtname, this.txtpassword, this.txtorg);

  @override
  _cyclePageState createState() => _cyclePageState();
}

String dropdownValue = 'Option 1';

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(1.sp, 1.sp, 50, 50);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class _cyclePageState extends State<cyclePage> {
  List<String> items = ['IN_PROGRESS', 'DONE', 'NEW', 'CANCEL'];

  int numberOfPages = 10;
  int currentPage = 1;

  String? selectedItem;
  String? selectedItem1;
  String? selectedItem2;
  List<Cycle> cycles = [];
  DateTime? selectedDateStart;
  DateTime? selectedDateEnd;

  final DateFormat _dateFormatter = DateFormat('yyyy-MM-dd');

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
          DateTime cycleStartDate = DateTime.parse(cycle.endDate!);
          return cycleStartDate.isBefore(startDate) || cycleStartDate.isAtSameMomentAs(startDate);
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
        filterDataByDate1(selectedDateStart!);
      });
    }
  }

  void filterDataByDate(DateTime endDate) {
    setState(() {
      cycles = cycles.where((cycle) {
        if (cycle.endDate != null) {
          DateTime cycleEndDate = DateTime.parse(cycle.endDate!);
          return cycleEndDate.isBefore(endDate) || cycleEndDate.isAtSameMomentAs(endDate);
        }
        return false;
      }).toList();
    });
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




  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
      numberOfPages,
          (index) => Center(
      ),
    );

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
                        clipper: MyClipper(),
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
                            ElevatedButton.icon(
                              onPressed: () => _selectDateStart(context),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              label: Text(
                                selectedDateStart != null
                                    ? DateFormat('yyyy-MM-dd').format(selectedDateStart!)
                                    : 'Start Date',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              icon: Icon(Icons.calendar_month),
                            ),
                            ElevatedButton.icon(
                              onPressed: () => _selectDateEnd(context),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              label: Text(
                                selectedDateEnd != null
                                    ? DateFormat('yyyy-MM-dd').format(selectedDateEnd!)
                                    : 'End Date',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              icon: Icon(Icons.calendar_month),
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 65.sp, vertical: 5.sp),
              child: Container(
                // height: 2000.h,
                width: 2100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(2),
                  ),
                ),
                child: Column(
                  children: [
                    for (var cycle in cycles)
                      CycleBlock(
                        orgID: cycle.orgID!,
                        cycle: cycle.cycle!,
                        startDate: cycle.startDate!,
                        endDate: cycle.endDate!,
                        status: cycle.status!,
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: pages[currentPage],
              ),
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
          ], //children
        ),
      ),
    );
  }
}
