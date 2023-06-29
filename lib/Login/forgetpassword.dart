import 'package:flutter/material.dart';
import 'package:intern/Test/loginpage1.dart';
import 'package:intern/Cycle/testp.dart';

class forpassword extends StatefulWidget {
  const forpassword({Key? key}) : super(key: key);

  @override
  State<forpassword> createState() => _forpasswordState();
}

class _forpasswordState extends State<forpassword> {
  final TextEditingController orgcon = TextEditingController();
  final TextEditingController namecon = TextEditingController();
  bool _isnameconTextNotEmpty = false;
  bool _isorgconTextNotEmpty = false;

  bool obscureText = true;
  Widget? _messageWidget;

  void _orgclearText() {
    orgcon.clear();
    setState(() {
      _isorgconTextNotEmpty = false;
    });
  }

  void _nameclearText() {
    namecon.clear() ;
    setState(() {
      _isnameconTextNotEmpty = false;
    });
  }



  @override
  void dispose() {
    namecon.dispose();
    super.dispose();
  }
  void Send(BuildContext context) {
    String name = namecon.text.trim();
    String org = orgcon.text.trim();

    if (name.isEmpty || org.isEmpty) {
      setState(() {
        _messageWidget = buildMessageWidget(
            'กรุณากรอก ชื่อองค์กร หรือ ชื่อผู้ใช้', Colors.red);
      });
    } else if (name != 'admin' || org != 'ZEEN') {
      setState(() {
        _messageWidget = buildMessageWidget(
            'ชื่อองค์กร หรือ ชื่อผู้ใช้ ', Colors.red);
      });
    }

    // else {
    //   setState(() {
    //     _messageWidget = null;
    //   });
    //
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) =>
    //           cyclePage('admin', '1234', 'Zeen'),
    //     ),
    //   );
    // }
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  width: 300,
                                  height: 300,
                                  child: Image.asset(
                                    'assets/images/Zeenlogo.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                              height: 10,
                              ),
                              const Text(
                                'ลืมรหัสผ่าน/ปลดล็อค',
                                style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontSize: 30,
                                  color: Colors.orange,
                                ),
                              ),
                              if (_messageWidget != null) _messageWidget!,

                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      TextField(
                                        style: Theme.of(context).textTheme.bodyLarge,
                                        textAlign: TextAlign.left,
                                        controller: orgcon,
                                        onChanged: (value) {
                                          setState(() {
                                            _isorgconTextNotEmpty = value.isNotEmpty;
                                          });
                                        },
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'องค์กร',
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
                                        ),
                                        inputFormatters: [
                                          UpperCaseTxt(),
                                        ],
                                      ),
                                      if (_isorgconTextNotEmpty)
                                        Positioned(
                                          right: 0,
                                          child: IconButton(
                                            icon: Icon(Icons.cancel , size: 20, color: Colors.grey,),
                                            onPressed: _orgclearText,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),

                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      TextField(
                                        style: Theme.of(context).textTheme.bodyLarge,
                                        textAlign: TextAlign.left,
                                        controller: namecon,
                                        onChanged: (value) {
                                          setState(() {
                                            _isnameconTextNotEmpty = value.isNotEmpty;
                                          });
                                        },
                                        keyboardType: TextInputType.name,
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
                                        ),
                                      ),
                                      if (_isnameconTextNotEmpty)
                                        Positioned(
                                          right: 0,
                                          child: IconButton(
                                            icon: Icon(Icons.cancel , size: 20, color: Colors.grey,),
                                            onPressed: _nameclearText,
                                          ),
                                        ),
                                    ],
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
                                    },
                                    // เพิ่มโค้ดเพื่อนำไปหน้า loginpage หรือเพจที่ต้องการ
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromRGBO(167, 167, 167, 1),
                                        onPrimary: Colors.white,
                                        onSurface:
                                            Color.fromRGBO(105, 122, 132, 1)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                  SizedBox(width: 10,height: 70,),
                                  // ระยะห่างประมาณ 10 หน่วย
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
                              ),
                              SizedBox(
                                height: 100,
                              )
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
