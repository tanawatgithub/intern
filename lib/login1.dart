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

  void LoginPage(BuildContext context) {
    String name = namecon.text.trim();
    String password = passwordcon.text.trim();
    String org = orgcon.text.trim();


    if (name.isNotEmpty && password.isNotEmpty && org.isNotEmpty) {
      // ทำการตรวจสอบข้อมูลผู้ใช้งาน
      // ถ้าข้อมูลถูกต้องให้ไปยังหน้าถัดไป
      if (name == 'admin' && password == 'password' && org == 'Zeen') {
        // ข้อมูลถูกต้อง ไปยังหน้าถัดไป
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginHomePage(namecon.text,passwordcon.text,orgcon.text)),
        );
      } else {
        // ข้อมูลไม่ถูกต้อง แสดงข้อความแจ้งเตือน
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
      // ไม่ได้ป้อนข้อมูลผู้ใช้งาน
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
          title:  Text('เข้าสู่ระบบ')
      ),
      body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField( //org
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.left,
              controller: orgcon,
              keyboardType: TextInputType.name,
              decoration:  InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'องค์กร',
                icon: Icon(Icons.person),
              ),
            ),
            TextField( // user
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.left,
              controller: namecon,
              keyboardType: TextInputType.name,
              decoration:  InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ผู้ใช้งาน',
                icon: Icon(Icons.person),
              ),
            ),
            TextField( // password
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.left,
              controller: passwordcon,
              keyboardType: TextInputType.phone,
              obscureText: true,
              decoration:  InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'รหัสผ่าน',
                icon: Icon(Icons.password),
              ),
            ),
            const Padding(padding: EdgeInsets.all(16.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: ()=> LoginPage(context),
                    child: Text('Login')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
