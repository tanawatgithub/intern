import 'package:flutter/material.dart';
import 'package:intern/login1.dart';
import 'package:intern/forgetpassword.dart';
import 'package:intern/cycle.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Mali' 'Kanit',
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      //home: forpassword(),
      //home: LoginPage(),
      home: cyclepage('admin','1234','Zeen')
    );
  }
}



