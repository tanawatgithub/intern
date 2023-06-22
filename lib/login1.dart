import 'package:flutter/material.dart';
import 'package:intern/cycle.dart';
import 'package:intern/loginpage1.dart';
import 'package:intern/testp.dart';
import 'package:intern/forgetpassword.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  Widget? _messageWidget;


  void login(BuildContext context) {
    String name = namecon.text.trim();
    String password = passwordcon.text.trim();
    String org = orgcon.text.trim();

    if (name.isEmpty || password.isEmpty || org.isEmpty) {
      setState(() {
        _messageWidget = buildMessageWidget('กรุณากรอก ชื่อองค์กร ชื่อผู้ใช้ หรือ รหัสผ่าน', Colors.red);
      });
    }
    else if (name != 'admin' || password != '1234' || org != 'Zeen') {

      setState(() {
        _messageWidget = buildMessageWidget('ชื่อองค์กร ชื่อผู้ใช้ หรือ รหัสผ่านไม่ถูกต้อง', Colors.red);
      });
    }

    else {
      setState(() {
        _messageWidget = null;
      });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              cyclePage('admin', '1234', 'Zeen'),
        ),
      );
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
                      vertical: 30,
                      horizontal: 20,
                    ),
                    child: Container(
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
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  width: 300,
                                  height: 300,
                                  child: Image.asset(
                                    'assets/images/Zeenlogo.png',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 0.6 , height: 0.3,),
                              const Text(
                                'เข้าสู่ระบบ',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontSize: 30,
                                  color: Colors.orange,
                                ),
                              ),
                              if (_messageWidget != null) _messageWidget!,

                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextField(
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .bodyLarge,
                                    textAlign: TextAlign.left,
                                    controller: orgcon,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      labelText: 'องค์กร',
                                      labelStyle: const TextStyle(
                                        color: Colors.orange,
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.location_city_rounded,
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
                                          orgcon.clear();
                                        },
                                        icon: const Icon(
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
                                child: SizedBox(
                                  width: double.infinity,
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
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  width: double.infinity,
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
                                      border: const OutlineInputBorder(),
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
                                          'ลืมรหัสผ่าน / ปลดล็อค       ',
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
                              SizedBox(height: 30,)
                              // const SizedBox(height: 20),
                              // GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => testp()
                              //       ),
                              //     );
                              //   },
                              //   child: const Text(
                              //     'เข้าสู่ระบบด้วยระบบ PIN',
                              //     style: TextStyle(
                              //       fontFamily: 'Kanit',
                              //       fontSize: 16,
                              //       color: Colors.red,
                              //       decoration: TextDecoration.underline,
                              //
                              //     ),
                              //   ),
                              // ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     Row(
                              //       mainAxisAlignment: MainAxisAlignment.end,
                              //       children: [
                              //         const Text('version: 1.0.0.Beta    ',
                              //           style: TextStyle(
                              //             fontFamily: 'Kani',
                              //             fontSize: 1,
                              //             color: Colors.orange,
                              //           ),
                              //         )
                              //       ],
                              //     ),
                              //   ],
                              // )
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
