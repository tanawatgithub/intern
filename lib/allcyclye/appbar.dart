import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern/utils.dart';

class cycleappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.90;
    return Container(
      width: double.infinity,
      child: Container(
        // billbosrdwqx (0:85)
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame5269LFp (0:86)
              padding: EdgeInsets.fromLTRB(65*fem, 31.5*fem, 65*fem, 26.5*fem),
              width: double.infinity,
              height: 150*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // zeenapplogoLQE (0:87)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 801.33*fem, 0*fem),
                    width: 220.67*fem,
                    height: 82.75*fem,
                    child: Image.asset(
                      'assets/images/zeenapplogo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // frame5276dPL (0:88)
                    padding: EdgeInsets.fromLTRB(0*fem, 18.5*fem, 0*fem, 0*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame5317KGA (0:89)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 14.5*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // FJE (0:90)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 2*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 158*fem,
                                ),
                                child: Text(
                                  'พิริยะ ณิทธิมนพันธ์ุ',
                                  style: SafeGoogleFont (
                                    'Kanit',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 0.8*ffem/fem,
                                    letterSpacing: 0.5*fem,
                                    color: Color(0xe5000000),
                                  ),
                                ),
                              ),
                              Container(
                                // useridauditor01zeencloud4mU (0:91)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 15*fem),
                                child: Text(
                                  'User ID : auditor01@zeen.cloud',
                                  style: SafeGoogleFont (
                                    'Kanit',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.3333333333*ffem/fem,
                                    letterSpacing: 0.400000006*fem,
                                    color: Color(0xff6d7c84),
                                  ),
                                ),
                              ),
                              Text(
                                // orgplus8FY (0:93)
                                'ORG : PLUS',
                                style: SafeGoogleFont (
                                  'Kanit',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 0.3571428571*ffem/fem,
                                  letterSpacing: 0.400000006*fem,
                                  color: Color(0xfffd7e18),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // maskgroupqfk (0:96)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12.5*fem),
                          width: 60*fem,
                          height: 60*fem,
                          child: Image.asset(
                            'assets/images/mask-group.png',
                            width: 60*fem,
                            height: 60*fem,
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
              padding: EdgeInsets.fromLTRB(0*fem, 9*fem, 0*fem, 0*fem),
              width: double.infinity,
              height: 5*fem,
              decoration: BoxDecoration (
                color: Color(0xffdc2529),
              ),
              child: Container(
                // frame533554J (0:101)
                padding: EdgeInsets.fromLTRB(65*fem, 20*fem, 65*fem, 10*fem),
                width: double.infinity,
                height: 88*fem,
                decoration: BoxDecoration (
                  color: Color(0xfff5f5f5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame5275zBG (0:102)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1006*fem, 10*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 9*fem, 0*fem, 11*fem),
                      width: 139*fem,
                      decoration: BoxDecoration (
                        color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Text(
                        'Cycle',
                        style: SafeGoogleFont (
                          'Kanit',
                          fontSize: 32*ffem,
                          fontWeight: FontWeight.w600,
                          height: 0.875*ffem/fem,
                          color: Color(0xff6d7c84),
                        ),
                      ),
                    ),
                    Container(
                      // frame53312dk (0:104)
                      padding: EdgeInsets.fromLTRB(19.94*fem, 15*fem, 7.95*fem, 15*fem),
                      height: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(10*fem),
                        gradient: LinearGradient (
                          begin: Alignment(0.933, 0),
                          end: Alignment(-0.945, 0),
                          colors: <Color>[Color(0xffa6a6a6), Color(0xff697a83)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // arrowrightrsg (0:105)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                            width: 22.11*fem,
                            height: 20.47*fem,
                            child: Image.asset(
                              'assets/images/arrow-right-4Bg.png',
                              width: 22.11*fem,
                              height: 20.47*fem,
                            ),
                          ),
                          Text(
                            // yBc (0:106)
                            'ย้อนกลับ',
                            style: TextStyle (
                              fontSize: 22*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2727272727*ffem/fem,
                              color: Colors.red,
                              fontFamily: 'Kanit',
                            ),
                          ),
                        ],
                      ),
                    ),
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