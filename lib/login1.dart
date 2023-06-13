import 'package:flutter/material.dart';
import 'package:intern/loginpage1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController orgcon = TextEditingController();
  final TextEditingController namecon = TextEditingController();
  final TextEditingController passwordcon = TextEditingController();

  void login(BuildContext context) {
    String name = namecon.text.trim();
    String password = passwordcon.text.trim();
    String org = orgcon.text.trim();

    if (name.isNotEmpty && password.isNotEmpty && org.isNotEmpty) {
      if (name == 'admin' && password == 'password' && org == 'Zeen') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
              LoginHomePage(namecon.text, passwordcon.text, orgcon.text)),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('ผิดพลาด'),
              content: Text('ชื่อผู้ใช้งานหรือรหัสผ่านไม่ถูกต้อง'),
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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg123.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [Center(
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 60,horizontal: 20),
                  child: Container(
                    width: 667,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.6,
                              height: constraints.maxHeight * 0.3,
                              child: Image.asset('assets/images/Frame 2178.png'),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                'เข้าสู่ระบบ'
                                    style
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: 530,
                                child: TextField(
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyText1,
                                  textAlign: TextAlign.left,
                                  controller: orgcon,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'องค์กร',
                                    prefixIcon: Icon(Icons.location_city_rounded), // แก้ไขตรงนี้
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                              width: 530,
                              child: TextField(
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1,
                                textAlign: TextAlign.left,
                                controller: namecon,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'ผู้ใช้งาน',
                                  prefixIcon: Icon(Icons.person), // แก้ไขตรงนี้
                                ),
                              ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: 530,
                              child: TextField(
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1,
                                textAlign: TextAlign.left,
                                controller: passwordcon,
                                keyboardType: TextInputType.phone,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'รหัสผ่าน',
                                  prefixIcon: Icon(Icons.lock), // แก้ไขตรงนี้
                                ),
                              ),
                            ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => login(context),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                onPrimary: Colors.white,
                                onSurface: Colors.orange,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(width: 9,height: 50,),
                                  Text('เข้าสู่ระบบ'),
                                  Icon(
                                    Icons.arrow_forward_sharp,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Text(
                            'เข้าสู่ระบบด้วยระบบ PIN',
                            style: TextStyle(fontSize: 10.0, fontFamily: 'Kanit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )],
            ),
          );
        },
      ),
    );
  }
}
