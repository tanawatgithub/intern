import 'package:flutter/material.dart';

class reportPage extends StatefulWidget {

  @override
  State<reportPage> createState() => _reportPageState();
}

class _reportPageState extends State<reportPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.90;
    return const Scaffold(

    );

  }
}


