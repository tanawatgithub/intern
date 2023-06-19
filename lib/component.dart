import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CycleBlock extends StatelessWidget{
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
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(orgID , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
        Text(cycle, style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
        Text(startDate , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
        Text(endDate , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
        Text(status , style: TextStyle(fontFamily: 'Kanit' , fontWeight: FontWeight.bold  ),),
      ],
    );
  }
}
