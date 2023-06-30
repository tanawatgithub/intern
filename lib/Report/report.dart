import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../domain/report.dart';
import 'service.dart';



class ReportPage extends StatefulWidget {
  final String? txtname;
  final String? txtorg;

  const ReportPage(this.txtname, this.txtorg);
//
  @override
  State<ReportPage> createState() => _ReportPageState();
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}


class _ReportPageState extends State<ReportPage> {
  List<Report> reports = [];
  bool isExpanded = false;
  String? selectedFilter;
  DTS dts = DTS();
  int _rowPerPage = PaginatedDataTable.defaultRowsPerPage;

  final _horizontalScrollController = ScrollController();

  final ReportService reportService = ReportService();

  @override
  void initState(){
    super.initState();
    reportf();
  }

  void reportf() async {
     final reports = await ReportService().getReport();
     dts.updateReports((reports));
  }



  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.90;


    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(
                    65 * fem,
                    17.5 * fem,
                    65 * fem,
                    12.5 * fem,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fem,
                          0 * fem,
                          800 * fem,
                          0 * fem,
                        ),
                        width: 220.67 * fem,
                        height: 82.75 * fem,
                        child: Image.asset(
                          'assets/images/zeenapplogo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            0 * fem,
                            18.5 * fem,
                            0 * fem,
                            0 * fem,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                    0 * fem,
                                    0 * fem,
                                    7 * fem,
                                    0 * fem,
                                  ),
                                  padding: EdgeInsets.fromLTRB(
                                    18 * fem,
                                    0 * fem,
                                    0 * fem,
                                    12.5 * fem,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                          0 * fem,
                                          5 * fem,
                                          6 * fem,
                                          4 * fem,
                                        ),
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
                                        margin: EdgeInsets.fromLTRB(
                                          0 * fem,
                                          0 * fem,
                                          0 * fem,
                                          10 * fem,
                                        ),
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
                                        margin: EdgeInsets.fromLTRB(
                                          0 * fem,
                                          0 * fem,
                                          0 * fem,
                                          10 * fem,
                                        ),
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
                                margin: EdgeInsets.fromLTRB(
                                  0 * fem,
                                  0 * fem,
                                  0 * fem,
                                  13 * fem,
                                ),
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
                  padding: EdgeInsets.fromLTRB(
                    0 * fem,
                    9 * fem,
                    0 * fem,
                    0 * fem,
                  ),
                  width: double.infinity,
                  height: 5 * fem,
                  decoration: const BoxDecoration(
                    color: Color(0xffdc2529),
                  ),
                ),

                //------------------------------------------------------------------------------------------------------//

                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DropdownButton(
                        hint: const Text("Filter1"),
                        value: selectedFilter,
                        items: const [
                          DropdownMenuItem(
                            value: "ALL",
                            child: Text("ALL"),
                          ),
                          DropdownMenuItem(
                            value: "AuditID",
                            child: Text("AuditID"),
                          ),
                          DropdownMenuItem(
                            value: "ShopID",
                            child: Text("ShopID"),
                          ),
                          DropdownMenuItem(
                            value: "ShopSegment",
                            child: Text("ShopSegment"),
                          ),
                          DropdownMenuItem(
                            value: "Region",
                            child: Text("Region"),
                          ),
                          DropdownMenuItem(
                            value: "Province",
                            child: Text("Province"),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedFilter = value as String?;
                          });
                        },
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      DropdownButton(
                          hint: const Text("Filter2"),
                          items: const [
                            DropdownMenuItem(
                              value: "AuditID",
                              child: Text("AuditID"),
                            ),
                            DropdownMenuItem(
                              value: "ShopID",
                              child: Text("ShopID"),
                            ),
                            DropdownMenuItem(
                              value: "ShopSegment",
                              child: Text("ShopSegment"),
                            ),
                            DropdownMenuItem(
                              value: "Region",
                              child: Text("Region"),
                            ),
                            DropdownMenuItem(
                              value: "Province",
                              child: Text("Province"),
                            ),
                          ],
                          onChanged: (value) {}),
                    ],
                  ),
                ),

                // const SizedBox(
                //   height: 10.0,
                // ),
                // Now Let's add the table
                FutureBuilder(
                  future: reportService.getReport(),
                  builder: (context,snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container(
                        width: 20,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                            color: Colors.black26,
                              blurRadius: 10,
                            offset: Offset(0, 10),
                          ),
                          ]
                        ),
                        child: Center(
                          child: SpinKitDualRing(
                            color: Colors.orange,
                            size: 60.0,
                          ),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('เกิดข้อผิดพลาด: ${snapshot.error}'),
                      );
                    }
                    else {
                      return Scrollbar(
                        controller: _horizontalScrollController,
                        thumbVisibility: true,
                        trackVisibility: true,
                        thickness: 10,
                        child: PaginatedDataTable(
                          controller: _horizontalScrollController,
                          columns: const [
                            DataColumn(label: Text("Cycle")),
                            DataColumn(label: Text("AuditID")),
                            DataColumn(label: Text("AuditStatus")),
                            DataColumn(label: Text("FoundStatus")),
                            DataColumn(label: Text("DcID")),
                            DataColumn(label: Text("DcName")),
                            DataColumn(label: Text("ShopID")),
                            DataColumn(label: Text("ShopName")),
                            DataColumn(label: Text("ShopSegment")),
                            DataColumn(label: Text("Region")),
                            DataColumn(label: Text("Province")),
                            DataColumn(label: Text("PageID")),
                            DataColumn(label: Text("GroupID")),
                            DataColumn(label: Text("QuestionID")),
                            DataColumn(label: Text("Topic")),
                            DataColumn(label: Text("Title")),
                            DataColumn(label: Text("Module")),
                            DataColumn(label: Text("Score")),
                            DataColumn(label: Text("OverallImageUrl")),
                            DataColumn(label: Text("FinalAnswer")),
                            DataColumn(label: Text("AutoAnswer")),
                            DataColumn(label: Text("AnswerBy")),
                            DataColumn(label: Text("AnswerDiff")),
                            DataColumn(label: Text("ShelfShareDiff")),
                            DataColumn(label: Text("PopDiff")),
                            DataColumn(label: Text("ClusterDiff")),
                            DataColumn(label: Text("ShelfLayoutDiff")),
                            DataColumn(label: Text("IsAISkipped")),
                            DataColumn(label: Text("ChallengeBy")),
                            DataColumn(label: Text("AutoQuestion")),
                            DataColumn(label: Text("DetectionStatus")),
                            DataColumn(label: Text("SubmitByAuditorID")),
                            DataColumn(label: Text("UpdateByAuditorID")),
                            DataColumn(label: Text("CheckInDateTime")),
                            DataColumn(label: Text("CheckOutDateTime")),
                            DataColumn(label: Text("UpdateDateTime")),
                            DataColumn(label: Text("QuestionTags")),
                            DataColumn(label: Text("ScoreTags")),
                            DataColumn(label: Text("QuestionRef1")),
                            DataColumn(label: Text("QuestionRef2")),
                            DataColumn(label: Text("ShopRef1")),
                            DataColumn(label: Text("ShopRef2")),
                            DataColumn(label: Text("BasketRef1")),
                            DataColumn(label: Text("BasketRef2")),
                            DataColumn(label: Text("AIAnswer")),
                          ],
                          source: dts,
                          onRowsPerPageChanged: (r) {
                            setState(() {
                              _rowPerPage = r!;
                            });
                          },
                          rowsPerPage: _rowPerPage,
                        ),
                      );
                    }
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

class DTS extends DataTableSource {
  List<Report> reports = [];

  void updateReports(List<Report> newReports) {
    reports.clear();
    reports.addAll(newReports);
    notifyListeners();
  }


  @override
  DataRow? getRow(int index) {
     // ตรวจสอบว่ามีข้อมูลในรายการ reports หรือไม่
    // if (index >= reports.length) return null;
    final Report = reports[index];
    return DataRow(
      cells:  [
        DataCell(Text(Report.Cycle?? '')),
        DataCell(Text(Report.AuditID?? '')),
        DataCell(Text(Report.AuditStatus?? '')),
        DataCell(Text(Report.FoundStatus?? '')),
        DataCell(Text(Report.DcID?? '')),
        DataCell(Text(Report.DcName?? '')),
        DataCell(Text(Report.ShopID?? '')),
        DataCell(Text(Report.ShopName?? '')),
        DataCell(Text(Report.ShopSegment?? '')),
        DataCell(Text(Report.Region?? '')),
        DataCell(Text(Report.Province?? '')),
        DataCell(Text(Report.PageID?? '')),
        DataCell(Text(Report.GroupID?? '')),
        DataCell(Text(Report.QuestionID?? '')),
        DataCell(Text(Report.Topic?? '')),
        DataCell(Text(Report.Title?? '')),
        DataCell(Text(Report.Module?? '')),
        DataCell(Text(Report.Score != null ? Report.Score.toString() : '')),
        DataCell(Text(Report.OverallImageUrl?? '')),
        DataCell(Text(Report.FinalAnswer?? '')),
        DataCell(Text(Report.AutoAnswer?? '')),
        DataCell(Text(Report.AnswerBy?? '')),
        DataCell(Text(Report.AnswerDiff?? '')),
        DataCell(Text(Report.ShelfShareDiff?? '')),
        DataCell(Text(Report.PopDiff?? '')),
        DataCell(Text(Report.ClusterDiff?? '')),
        DataCell(Text(Report.ShelfLayoutDiff?? '')),
        DataCell(Text(Report.IsAISkipped?? '')),
        DataCell(Text(Report.ChallengeBy?? '')),
        DataCell(Text(Report.AutoQuestion?? '')),
        DataCell(Text(Report.DetectionStatus?? '')),
        DataCell(Text(Report.SubmitByAuditorID?? '')),
        DataCell(Text(Report.UpdateByAuditorID?? '')),
        DataCell(Text(Report.CheckInDateTime?? '')),
        DataCell(Text(Report.CheckOutDateTime?? '')),
        DataCell(Text(Report.UpdateDateTime?? '')),
        DataCell(Text(Report.QuestionTags?? '')),
        DataCell(Text(Report.ScoreTags?? '')),
        DataCell(Text(Report.QuestionRef1?? '')),
        DataCell(Text(Report.QuestionRef2?? '')),
        DataCell(Text(Report.ShopRef1?? '')),
        DataCell(Text(Report.ShopRef2?? '')),
        DataCell(Text(Report.BasketRef1?? '')),
        DataCell(Text(Report.BasketRef2?? '')),
        DataCell(Text(Report.AIAnswer?? '')),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => reports.length;

  @override
  int get selectedRowCount => 0;
}//

