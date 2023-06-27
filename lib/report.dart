import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  final String? txtname;
  final String? txtorg;

  const ReportPage(this.txtname, this.txtorg);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  bool isExpanded = false;

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
                                  decoration: BoxDecoration(
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
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DropdownButton(
                        hint: const Text("Filter1"),
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
                        onChanged: (value) {}),
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
                SizedBox(
                  height: 10.0,
                ),
                // Now Let's add the table
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DataTable(
                            headingRowColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.white),
                            columns: const [
                              DataColumn(label: Text("Cycle")),
                              DataColumn(label: Text("AuditID")),
                              DataColumn(label: Text("AuditStatus")),
                              DataColumn(label: Text("FoundStatus")),
                              DataColumn(label: Text("DcID")),
                              DataColumn(label: Text("DcName")),
                              DataColumn(label: Text("ShopID")),
                              DataColumn(label: Text("ShopSegment")),
                              DataColumn(label: Text("Region")),
                              DataColumn(label: Text("Province")),
                              DataColumn(label: Text("PageID")),
                              DataColumn(label: Text("GroupID")),
                              DataColumn(label: Text("QuestionID")),
                              DataColumn(label: Text("Topic")),
                              DataColumn(label: Text("Title")),
                              DataColumn(label: Text("OverallImageUrl")),
                              DataColumn(label: Text("FinalAnswer")),
                              DataColumn(label: Text("AutoAnswer")),
                              DataColumn(label: Text("AIAnswer")),
                              DataColumn(label: Text("AnswerBy")),
                              DataColumn(label: Text("AnswerDiff")),
                              DataColumn(label: Text("ShelfShareDiff")),
                              DataColumn(label: Text("PopDiff")),
                              DataColumn(label: Text("ClusterDiff")),
                              DataColumn(label: Text("ShelfLayoutDiff")),
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
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text("SINGHA_2023_03_28e")),
                                DataCell(Text("A2")),
                                DataCell(Text("SUMMIT")),
                                DataCell(Text("FOUND")),
                                DataCell(Text("NO_DC")),
                                DataCell(Text("")),
                                DataCell(Text("S00002")),
                                DataCell(Text("SEVEN_ELEVEN")),
                                DataCell(Text("W")),
                                DataCell(Text("สุพรรณบุรี")),
                                DataCell(Text("P01")),
                                DataCell(Text("G1")),
                                DataCell(Text("Q001")),
                                DataCell(Text("หมวดเบียร์ในตู้แช่")),
                                DataCell(Text("ความพร้อมขายของสินค้า หมวดเบียร์ ที่มีจำน่าย (OOS/OSA)")),
                                DataCell(Text("")),
                                DataCell(Text("0 คะแนน")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("AUTO")),
                                DataCell(Text("N")),
                                DataCell(Text("N")),
                                DataCell(Text("N")),
                                DataCell(Text("N")),
                                DataCell(Text("N")),
                                DataCell(Text("")),
                                DataCell(Text("Y")),
                                DataCell(Text("")),
                                DataCell(Text("ZEEN.DEMO01@GMAIL.COM")),
                                DataCell(Text("ZEEN.DEMO04@GMAIL.COM")),
                                DataCell(Text("3/31/2023 12:57")),
                                DataCell(Text("3/31/2023 12:59")),
                                DataCell(Text("3/31/2023 13:01")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                              ]),
                              DataRow(cells: [
                                DataCell(Text("ICE_2023_03_28e")),
                                DataCell(Text("A2")),
                                DataCell(Text("SUMMIT")),
                                DataCell(Text("FOUND")),
                                DataCell(Text("NO_DC")),
                                DataCell(Text("")),
                                DataCell(Text("S00002")),
                                DataCell(Text("SEVEN_ELEVEN")),
                                DataCell(Text("W")),
                                DataCell(Text("สุพรรณบุรี")),
                                DataCell(Text("P01")),
                                DataCell(Text("G1")),
                                DataCell(Text("Q001")),
                                DataCell(Text("หมวดเบียร์ในตู้แช่")),
                                DataCell(Text("ความพร้อมขายของสินค้า หมวดเบียร์ ที่มีจำน่าย (OOS/OSA)")),
                                DataCell(Text("")),
                                DataCell(Text("0 คะแนน")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("AUTO")),
                                DataCell(Text("N")),
                                DataCell(Text("N")),
                                DataCell(Text("N")),
                                DataCell(Text("N")),
                                DataCell(Text("N")),
                                DataCell(Text("")),
                                DataCell(Text("Y")),
                                DataCell(Text("")),
                                DataCell(Text("ZEEN.DEMO01@GMAIL.COM")),
                                DataCell(Text("ZEEN.DEMO04@GMAIL.COM")),
                                DataCell(Text("3/31/2023 12:57")),
                                DataCell(Text("3/31/2023 12:59")),
                                DataCell(Text("3/31/2023 13:01")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text("")),
                              ])
                            ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
