import 'package:flutter/material.dart';
import 'package:intern/loginpage1.dart';

class forpassword extends StatefulWidget {
  const forpassword({Key? key}) : super(key: key);

  @override
  State<forpassword> createState() => _forpasswordState();
}

class _forpasswordState extends State<forpassword> {
  final TextEditingController orgcon = TextEditingController();
  final TextEditingController namecon = TextEditingController();
  //final TextEditingController passwordcon = TextEditingController();

  bool obscureText = true;
  Widget? _messageWidget;


  void Send(BuildContext context) {
    String name = namecon.text.trim();
    String org = orgcon.text.trim();

    if (name.isEmpty || org.isEmpty) {
      setState(() {
        _messageWidget = buildMessageWidget('กรุณากรอก ชื่อองค์กร ชื่อผู้ใช้ หรือ รหัสผ่าน', Colors.red);
      });
    } else if (name != 'admin' ||  org != 'Zeen') {
      setState(() {
        _messageWidget = buildMessageWidget('ชื่อองค์กร ชื่อผู้ใช้ หรือ รหัสผ่านไม่ถูกต้อง', Colors.red);
      });
    } else {
      setState(() {
        _messageWidget = null;
      });

    }
  }

  Widget buildMessageWidget(String message, Color color) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            message,
            style: TextStyle(
              color: color,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 60,
                      horizontal: 20,
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 667, maxHeight: 870),
                      width: 667,
                      // height: 835,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.orange),
                      ),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding:  EdgeInsets.all(30.0),
                                child: SizedBox(
                                  width: constraints.maxWidth * 0.6,
                                  height: constraints.maxHeight * 0.3,
                                  child: Image.asset(
                                    'assets/images/Zeenlogo.png',
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Text(
                                'ลืมรหัสผ่าน/ปลดล็อค',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontSize: 30,
                                  color: Colors.orange,
                                ),
                              ),
                              if (_messageWidget != null) _messageWidget!,
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: SizedBox(
                                  width: 530,
                                  child: TextField(
                                    style:
                                    Theme.of(context).textTheme.bodyText1,
                                    textAlign: TextAlign.left,
                                    controller: orgcon,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'องค์กร',
                                      labelStyle: TextStyle(
                                        color: Colors.orange,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.location_city_rounded,
                                        color: Colors.orange,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          orgcon.clear();
                                        },
                                        icon: Icon(
                                          Icons.cancel,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Container(
                                  width: 530,
                                  child: TextField(
                                    style:
                                    Theme.of(context).textTheme.bodyText1,
                                    textAlign: TextAlign.left,
                                    controller: namecon,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'ชื่อผู้ใช้',
                                      labelStyle: TextStyle(
                                        color: Colors.orange,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.orange,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          namecon.clear();
                                        },
                                        icon: Icon(
                                          Icons.cancel,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        },// เพิ่มโค้ดเพื่อนำไปหน้า loginpage หรือเพจที่ต้องการ
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(167, 167, 167, 1),
                                      onPrimary: Colors.white,
                                      onSurface: Color.fromRGBO(105, 122, 132, 1)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 9,
                                          height: 50,
                                        ),
                                        Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'ย้อนกลับ',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10), // ระยะห่างประมาณ 10 หน่วย
                                  ElevatedButton(
                                    onPressed: () => Send(context),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      onPrimary: Colors.white,
                                      onSurface: Colors.orange,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 9,
                                          height: 50,
                                        ),

                                        Text(
                                          'ส่ง',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_sharp,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}