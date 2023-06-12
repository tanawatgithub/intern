import 'package:flutter/material.dart';
import 'package:intern/login1.dart';

class LoginHomePage extends StatelessWidget {
  //const LoginPage({ Key? key }) : super(key: key);

  final String? txtName;
  final String? txtPassword;
  final String? txtOrg;
  
  const LoginHomePage(this.txtName,this.txtPassword, this.txtOrg);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Container(
        child: Column(
          children: [
            Text('ยินดีต้อนรับ'),
            Text('คุณ : $txtName'),
            Text('Password ของคุณ คือ : $txtPassword'),
            Text('ORg คือ: $txtOrg')
          ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context)=> LoginPage()));
        }, ),

    );
  }
}