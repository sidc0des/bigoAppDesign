import 'package:bingo/providers/providers.dart';
import 'package:bingo/theme.dart';
import 'package:bingo/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _phoneNoController = TextEditingController();
  TextEditingController _otpController = TextEditingController();
  bool loginViaPhone = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Consumer(builder: (context, watch, child) {
      final _authProvider = watch(Providers.authProvider);
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: size.height,
                child: SingleChildScrollView(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: size.height / 6,
                        ),
                        SizedBox(
                          height: size.height / 2 + 20,
                          width: size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Container(
                                child: Column(
                                  children: [
                                    if (loginViaPhone == true) ...[
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: SizedBox(
                                          height: 35,
                                          child: Center(
                                            child: Text(
                                              "Login via your phone number",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (!_authProvider.getOtpSent) ...[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25),
                                                color: Colors.transparent,
                                              ),
                                              height: 50,
                                              child: TextFormField(
                                                controller: _phoneNoController,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(25),
                                                      borderSide: BorderSide.none,
                                                    ),
                                                    fillColor: greycardColor,
                                                    focusColor: pineTree,
                                                    hintText: "Phone Number",
                                                    prefix: Text("+91"),
                                                    filled: true),
                                              )),
                                        ),
                                      ],
                                      if (_authProvider.getOtpSent) ...[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25),
                                                color: Colors.transparent,
                                              ),
                                              height: 50,
                                              child: TextFormField(
                                                controller: _otpController,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(25),
                                                      borderSide: BorderSide.none,
                                                    ),
                                                    fillColor: greycardColor,
                                                    focusColor: pineTree,
                                                    hintText: "OTP",
                                                    filled: true),
                                              )),
                                        ),
                                      ],
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
                                        child: MaterialButton(
                                            onPressed: () {
                                              if (_authProvider.getOtpSent) {
                                                print("otp");
                                                if (_otpController.text.length == 6) {
                                                  _authProvider.signIn(context: context, smsOTP: _otpController.text);
                                                }
                                              } else {
                                                if (_phoneNoController.text.length == 10) {
                                                  _authProvider.verifyPhoneNumber(
                                                      context, "+91${_phoneNoController.text}", false);
                                                }
                                              }
                                            },
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                            height: 50,
                                            elevation: 3,
                                            color: coolerBlue,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(_authProvider.getOtpSent ? "Login" : "Send OTP",
                                                    style: TextStyle(
                                                        fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700)),
                                              ],
                                            )),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                    if (loginViaPhone == false) ...[
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: SizedBox(
                                          height: 35,
                                          child: Text(
                                            "Sign in to Experience complete\n functions",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
                                        child: MaterialButton(
                                            onPressed: () {
                                              // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                            },
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                            height: 50,
                                            elevation: 3,
                                            color: Color(0xFF3C5998),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                CircleAvatar(
                                                  radius: 14,
                                                  backgroundColor: Colors.white,
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(top: 6.0),
                                                    child: Image.asset(
                                                      "assets/icons/facebook.png",
                                                      color: Color(0xFF3C5998),
                                                    ),
                                                  ),
                                                ),
                                                Text("Sign in with Facebook",
                                                    style: TextStyle(
                                                        fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700)),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                              ],
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
                                        child: MaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                loginViaPhone = true;
                                              });
                                              //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                            },
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                            height: 50,
                                            elevation: 3,
                                            color: coolerBlue,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.phone_android,
                                                  color: Colors.white,
                                                ),
                                                Text("Sign in with Phone",
                                                    style: TextStyle(
                                                        fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700)),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                              ],
                                            )),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: size.width / 5,
                                            child: Divider(
                                              thickness: 1.3,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                          child: Text(
                                            "OR",
                                            style: TextStyle(color: Colors.grey[400]),
                                          ),
                                        ),
                                        SizedBox(
                                            width: size.width / 5,
                                            child: Divider(
                                              thickness: 1.3,
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 17,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/icons/twitter.png",
                                          height: 40,
                                          width: 40,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.black,
                                          child: Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Image.asset(
                                              "assets/icons/apple.png",
                                              height: 40,
                                              width: 40,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Image.asset(
                                          "assets/icons/insta.png",
                                          height: 40,
                                          width: 40,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 139,
                          width: size.width - 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Login means you agree to our Terms of use, Broadcaster agreement & Privacy Policy (You have to be th minimum Age to use Bigo)",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Powered by OurCompanyName",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Positioned(
              //     bottom: 0,
              //     left: 20,
              //     child: ),
              Positioned(
                  top: 10,
                  right: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.close,
                      size: 25,
                      color: Colors.grey,
                    ),
                  )),
            ],
          ),
        ),
      );
    });
  }
}
