import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CycleBlock extends StatelessWidget {
  final String orgID;
  final String cycle;
  final String startDate;
  final String endDate;
  final String status;

  CycleBlock({
    required this.orgID,
    required this.cycle,
    required this.startDate,
    required this.endDate,
    required this.status,
  });

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
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 99.7 * fem, 1 * fem),
                child: Text(orgID,
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 128.6 * fem, 0 * fem),
                child: Text(cycle,
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB( 0 * fem, 0 * fem, 99.7 * fem, 0 * fem),
                child: Text(orgID,
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 128.6 * fem, 0 * fem),
                child: Text(startDate,
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB( 0 * fem, 0 * fem, 130 * fem, 0 * fem),
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
                width: 144*fem,
                height: 28*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xfffd7e18)),
                  color: Color(0xfffd7e18),
                  borderRadius: BorderRadius.circular(7*fem),
                ),
                margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                child: Center(
                  child: Text(status,
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