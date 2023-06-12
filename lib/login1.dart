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
          MaterialPageRoute(builder: (context) => LoginHomePage(namecon.text,passwordcon.text,orgcon.text)),
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

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // SizedBox(height: 50),
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/images/Frame 2178.png'),
                ),
                SizedBox(width: 10),
                Container(
                  width: 250,
                  child: TextField(
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.left,
                    controller: orgcon,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'องค์กร',
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: 250,
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.left,
                controller: namecon,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ผู้ใช้งาน',
                  icon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 250,
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.left,
                controller: passwordcon,
                keyboardType: TextInputType.phone,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'รหัสผ่าน',
                  icon: Icon(Icons.password),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => login(context),
                  child: Text('Login'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: Text('เข้าสู่ระบบด้วยระบบด้วย PI',style: TextStyle(fontSize:10.0,fontFamily: 'Mali')),
            ),
          ],
        ),
      ),
    );
  }
}
