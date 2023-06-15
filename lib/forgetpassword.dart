import 'package:flutter/material.dart';
import 'package:intern/loginpage1.dart';

class forpassword extends StatefulWidget {
  @override
  State<forpassword> createState() => _forpasswordState();
}

class _forpasswordState extends State<forpassword> {

  final TextEditingController orgcon = TextEditingController();
  final TextEditingController namecon = TextEditingController();

  bool obscureText = true;

  void Send(BuildContext context) {
    String name = namecon.text.trim();
    String org = orgcon.text.trim();

    if (name.isNotEmpty && org.isNotEmpty) {
      if (name == 'admin' && org == 'Zeen') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginHomePage(orgcon.text,namecon.text,namecon.text)
          ),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('ผิดพลาด'),
              content: Text('ชื่อผู้ใช้งานไม่ถูกต้อง'),
              actions: [
                TextButton(
                  child: Text('ตกลง'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ผิดพลาด'),
            content: Text('กรุณากรอกข้อมูลผู้ใช้งาน'),
            actions: [
              TextButton(
                child: Text('ตกลง'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'ลืมรหัสผ่าน/ปลดล็อค',
          style: TextStyle(
            fontFamily: 'Kanit',
            fontSize: 18,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 60,
                      horizontal: 20,
                    ),
                    child: Container(
                      width: 667,
                      height: 835,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.orange),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.6,
                                height: constraints.maxHeight * 0.3,
                                child: Image.asset(
                                  'assets/images/Zeenlogo.png',
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'ลืมรหัสผ่าน/ปลดล็อค',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontSize: 30,
                                  color: Colors.orange,
                                ),
                              ),
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
                                        fontSize: 18,
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
                                        fontSize: 17.5,
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
                                    onPressed: () => Send(context),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      onPrimary: Colors.white,
                                      onSurface: Colors.orange,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 9,
                                          height: 50,
                                        ),
                                        Text(
                                          'ส่ง ',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'version: 1.0.0.Beta    ',
                                        style: TextStyle(
                                          fontFamily: 'Kanit',
                                          fontSize: 16,
                                          color: Colors.orange,
                                        ),
                                      )
                                    ],
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