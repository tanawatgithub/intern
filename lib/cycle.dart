import 'package:flutter/material.dart';
import 'package:intern/login1.dart';

class cyclepage extends StatefulWidget {
  final String? txtname;
  final String? txtpassword;
  final String? txtorg;

  const cyclepage(this.txtname, this.txtpassword, this.txtorg);

  @override
  _cyclepageState createState() => _cyclepageState();
}

class _cyclepageState extends State<cyclepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text('ยินดีต้อนรับ'),
            Text('คุณ : ${widget.txtname}'),
            Text('Password ของคุณ คือ : ${widget.txtpassword}'),
            Text('Org คือ: ${widget.txtorg}'),
            Spacer(),
            Transform.translate(
              offset: Offset(-1350, 0), // เลื่อนตำแหน่งรูปภาพทางขวาประมาณ -1350 หน่วย
              child: Image.asset(
                'assets/images/Zeenlogo1.png',
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
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
                    offset: Offset(-610, 0),
                    child: Text(
                      'Cycle',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () => BackButton,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onPrimary: Colors.white,
                      onSurface: Colors.orange,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 10,
                          height: 20,
                        ),
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Text(
                          'ย้อนกลับ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
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
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Text('1'),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 190, 82, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    width: 1341,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
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
