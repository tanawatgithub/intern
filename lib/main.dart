import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import 'Report/report.dart';
import 'Test/datarow.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440 , 1080), // Design size used for scaling
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        title: 'Intern',
        theme: ThemeData(
          textTheme: TextTheme(
            bodyLarge: TextStyle(fontFamily: 'Mali' 'Kanit')
          ),
          primarySwatch: Colors.blue,
        ),
        //home: cyclePage('admin','1234','ZEEN'),
        //home: LoginPage(),
        //home: forpassword(),
        home: ReportPage('admin','ZEEN'),
      ),
    );
  }
}

