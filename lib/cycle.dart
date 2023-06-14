import 'package:flutter/material.dart';

class cyclepage extends StatefulWidget {
  @override
  _cyclepageState createState() => _cyclepageState();
}

class _cyclepageState extends State<cyclepage> {
  String _selectedItem = 'Option 1';
  List<String> _buttonListItems = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Spacer(),
            Transform.translate(
              offset: Offset(-1150, 0), // เลือนตำแหน่งรูปภาพทางขวาประมาณ -1150 หน่วย
              child: Image.asset(
                'assets/images/Zeenlogo1.png',
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
        actions: [
          ButtonBar(
            children: _buttonListItems.map<Widget>((String value) {
              return TextButton(
                child: Text(value),
                onPressed: () {
                  setState(() {
                    _selectedItem = value;
                  });
                },
              );
            }).toList(),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: Container(
            color: Colors.red, // สีแดง
            height: 2.0, // ความสูงของเส้นขอบ
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Spacer(),
                  Transform.translate(
                    offset: Offset(-1450, 0),
                    child: Text(
                      'Cycle',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 25,),
                  Container(
                    width: 100,
                    height: 100,
                    child: Center(child: Text('1'),),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 190, 82, 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                    ),
                  ),
                  Container(
                    width: 1241,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
