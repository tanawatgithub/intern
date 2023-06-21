import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CycleBlock extends StatelessWidget {
  final int index;
  final String org;
  final String cycle;
  final String startDate;
  final String endDate;
  final String status;

  CycleBlock({
    required this.index,
    required this.org,
    required this.cycle,
    required this.startDate,
    required this.endDate,
    required this.status,
  });

  Color getStatusColor() {
    switch (status) {
      case 'IN_PROGRESS':
        return Color(0xFFFF7701); // #FF7701
      case 'DONE':
        return Color(0xFF22C55E); // #22C55E
      case 'CANCEL':
        return Color(0xFFDC2529); // #DC2529
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.90;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Text(index.toString(),
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(cycle,
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(org,
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(startDate,
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(endDate,
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.normal ,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                child: Container(
                  width: 144 * fem,
                  height: 28 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: getStatusColor()),
                    color: getStatusColor(),
                    borderRadius: BorderRadius.circular(7 * fem),
                  ),
                  margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                  child:
                      Text(status,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}