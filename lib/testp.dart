import 'package:flutter/material.dart';

class testp extends StatefulWidget {
  @override
  _testpState createState() => _testpState();
}

class _testpState extends State<testp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าต่อไป'),
      ),
      body: Center(
        child: Text('นี่คือหน้าต่อไป'),
      ),
    );
  }
}
