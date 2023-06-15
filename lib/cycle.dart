import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        title: Container(
          color: Colors.red,
          child: Row(
            children: [
              Text('ยินดีต้อนรับ'),
              Text('คุณ : ${widget.txtname}'),
              Text('Password ของคุณ คือ : ${widget.txtpassword}'),
              Text('Org คือ: ${widget.txtorg}'),
              Transform.translate(
                offset: Offset(-580.w, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/Zeenlogo1.png',
                    width: 220.67.w,
                    height: 82.75.h,
                  ),
                ),

              ),
            ],
          ),
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
                    width: 30.w,
                  ),
                  Container(
                    width: 60.w,
                    height: 100.h,
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
                    width: 1290.w,
                    height: 100.h,
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
