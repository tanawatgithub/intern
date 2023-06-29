import 'package:flutter/material.dart';

class IpagedatarowTable extends StatefulWidget {
  @override
  State<IpagedatarowTable> createState() => _IpagedatarowTableState();
}

class _IpagedatarowTableState extends State<IpagedatarowTable> {
  DTS dts = DTS();
  int _rowPerPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(

          child: PaginatedDataTable(
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
            source: dts,
            onRowsPerPageChanged: (r) {
              setState(() {
                _rowPerPage = r!;
              });
            },
            rowsPerPage: _rowPerPage,
          ),

        ),
      ),
    );
  }
}
class DTS extends DataTableSource {
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: const [
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
      ],
    );
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 50;

  @override
  int get selectedRowCount => 0;
}

