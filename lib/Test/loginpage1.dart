import 'package:flutter/material.dart';
import 'package:intern/domain/user_domain.dart';
import 'package:intern/Login/login1.dart';

class LoginHomePage extends StatelessWidget {


  //const LoginPage({ Key? key }) : super(key: key);
      final String? txtName;
      final String? txtOrg;
      final String? txtPassword;
  //final UserDomain user;
  
    const LoginHomePage(this.txtName,this.txtOrg,this.txtPassword);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Container(
        child: Column(
          children: [
            Text('ยินดีต้อนรับ'),
            Text('คุณ : $txtName'),
           Text('Org คือ: $txtOrg'),
            Text('Password คือ $txtPassword')
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