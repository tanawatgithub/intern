import 'package:flutter/material.dart';
import 'package:intern/loginpage1.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController org = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('เข้าสู่ระบบ')
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/BG.jpg'),
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
              controller: org,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'องค์กร',
                icon: Icon(Icons.person),
              ),
            ),
            TextField( // user
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.left,
              controller: name,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ผู้ใช้งาน',
                icon: Icon(Icons.person),
              ),
            ),
            TextField( // password
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.left,
              controller: password,
              keyboardType: TextInputType.phone,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'รหัสผ่าน',
                icon: Icon(Icons.password),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginHomePage(org.text,name.text,password.text))),
                    child: const Text('Login')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
