import 'package:flutter/material.dart';
import 'package:intern/loginpage1.dart';
import 'package:intern/testp.dart';
import 'package:intern/forgetpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController orgcon = TextEditingController();
  final TextEditingController namecon = TextEditingController();
  final TextEditingController passwordcon = TextEditingController();

  bool obscureText = true;

  void login(BuildContext context) {
    String name = namecon.text.trim();
    String password = passwordcon.text.trim();
    String org = orgcon.text.trim();

    if (name.isEmpty && password.isEmpty && org.isEmpty) {
      // กรณีผู้ใช้ไม่กรอก
      Center(
        child: Row(
          children: [
            Text(
              'กรุณากรอก ชื่อองค์กร ชื่อผู้ใช้ หรือ รหัสผ่าน',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }
    else if (name != 'admin' && password != '1234' && org != 'Zeen') {
      // กรณี username ผิดพลาด
      Row(
        children: [
          Text(
            'ชื่อองค์กร ชื่อผู้ใช้ หรือ รหัสผ่านไม่ถูกต้อง',
            style: TextStyle(
              color: Colors.red,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }
    else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginHomePage(
            namecon.text,
            passwordcon.text,
            orgcon.text,
          ),
        ),
      );
    }
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
                        width: 667,
                        height: 835,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red),
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
                                const SizedBox(height: 10),
                                const Text(
                                  'เข้าสู่ระบบ',
                                  style: TextStyle(
                                    fontFamily: 'Kanit',
                                    fontSize: 30,
                                    color: Colors.orange,
                                  ),
                                ),
                                const SizedBox(height: 10),


                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: SizedBox(
                                    width: 667,
                                    child: TextField(
                                      style: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyLarge,
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
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Container(
                                    width: 667,
                                    child: TextField(
                                      style: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyLarge,
                                      textAlign: TextAlign.left,
                                      controller: namecon,
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'ชื่อผู้ใช้',
                                        labelStyle: const TextStyle(
                                          color: Colors.orange,
                                        ),
                                        prefixIcon: const Icon(
                                          Icons.person,
                                          color: Colors.orange,
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.orange,
                                          ),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.orange,
                                          ),
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            namecon.clear();
                                          },
                                          icon: const Icon(
                                            Icons.cancel,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Container(
                                    width: 667,
                                    child: TextField(
                                      style: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyLarge,
                                      textAlign: TextAlign.left,
                                      controller: passwordcon,
                                      keyboardType: TextInputType.phone,
                                      obscureText: obscureText,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'รหัสผ่าน',
                                        labelStyle: const TextStyle(
                                          color: Colors.orange,
                                        ),
                                        prefixIcon: const Icon(
                                          Icons.lock,
                                          color: Colors.orange,
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.orange,
                                          ),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.orange,
                                          ),
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              obscureText = !obscureText;
                                            });
                                          },
                                          child: Icon(
                                            obscureText
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    forpassword(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'ลืมรหัสผ่าน / ปลดล็อค                   ',
                                            style: TextStyle(
                                              fontFamily: 'Kanit',
                                              fontSize: 16,
                                              color: Colors.orange,
                                              decoration: TextDecoration
                                                  .underline,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
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
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          SizedBox(
                                            width: 9,
                                            height: 50,
                                          ),
                                          Text('เข้าสู่ระบบ', style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                          Icon(
                                            Icons.arrow_forward_sharp,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => testp(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'เข้าสู่ระบบด้วยระบบ PIN',
                                    style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontSize: 16,
                                      color: Colors.red,
                                      decoration: TextDecoration.underline,

                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text('version: 1.0.0.Beta    ',
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
