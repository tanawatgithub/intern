import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:intern/login1.dart';
// import 'package:intern/forgetpassword.dart';
import 'package:intern/cycle.dart';

import 'datarow.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920 , 1080), // Design size used for scaling
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'My App',
        theme: ThemeData(
          textTheme: TextTheme(
            bodyLarge: TextStyle(fontFamily: 'Mali' 'Kanit')
          ),
          primarySwatch: Colors.blue,
        ),
        home: cyclePage('admin','1234','Zeen'),
        //home: MyScreen(),
      ),
    );
  }
}

// debugShowCheckedModeBanner: false,

// ),
// home: cyclepage('admin','1234','Zeen'),

