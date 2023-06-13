import 'package:flutter/material.dart';
import 'package:intern/login1.dart';

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
            fontFamily: 'Mali',
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}



