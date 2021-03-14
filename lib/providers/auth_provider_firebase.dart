import 'dart:convert';

import 'package:bingo/views/home_page.dart';
import 'package:bingo/views/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  SharedPreferences _sharedPrefs;
  FirebaseAuth _auth = FirebaseAuth.instance;
  User _user;
  TextEditingController phoneNo;
  String verificationCode;
  String errorMessage = '';
  bool isLoggedIn = false;
  bool isLoading = false;
  bool _otpSent = false;
  AuthCredential credential;
  AuthCredential get getCredential => credential;

  User get firebaseUser => _user;
  bool get getOtpSent => _otpSent;

  // AuthProvider.initialize() {
  //   getPrefsData();
  // }

  Future<bool> getPrefsData() async {
    _sharedPrefs = await SharedPreferences.getInstance();

    isLoggedIn = _sharedPrefs.getBool('loggedIn') ?? false;

    if (isLoggedIn) {
      var userData = _sharedPrefs.getString('userData');

      _user = _auth.currentUser;
    }
    notifyListeners();
    // });

    return isLoggedIn;
  }

  handleError(error, BuildContext context) {
    print('error: ' + error);
    errorMessage = error.toString();
    notifyListeners();
    switch (error.code) {
      case 'ERROR_INVALID_VERIFICATION_CODE':
        print("The verification code is invalid");
        break;
      default:
        errorMessage = error.message;
        break;
    }
    notifyListeners();
  }

  Future<void> verifyPhoneNumber(
      BuildContext context, String number, bool resendOTP) async {
    print('number : $number');
    final PhoneCodeSent smsOTPSent = (String verId, [int forceCodeResend]) {
      this.verificationCode = verId;
      _otpSent = true;
      notifyListeners();
    };

    if (resendOTP) {
      try {
        await _auth.verifyPhoneNumber(
            phoneNumber: number.trim(),
            codeAutoRetrievalTimeout: (String verId) {
              this.verificationCode = verId;
            },
            codeSent: smsOTPSent,
            timeout: const Duration(seconds: 60),
            forceResendingToken: credential.token,
            verificationCompleted: (AuthCredential phoneAuthCredential) {
              credential = phoneAuthCredential;
            },
            verificationFailed: (FirebaseAuthException exceptio) {
              print('${exceptio.message} + something is wrong');
            });
      } catch (e) {
        handleError(e, context);
        errorMessage = e.toString();
        notifyListeners();
      }
    } else {
      try {
        await _auth.verifyPhoneNumber(
            phoneNumber: number.trim(),
            codeAutoRetrievalTimeout: (String verId) {
              this.verificationCode = verId;
            },
            codeSent: smsOTPSent,
            timeout: const Duration(seconds: 60),
            verificationCompleted: (AuthCredential phoneAuthCredential) async {
              credential = phoneAuthCredential;
              UserCredential result =
                  await _auth.signInWithCredential(credential);

              assert(result.user.uid != null);
              if (result.user.phoneNumber != null) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()),
                    (route) => false);
              }
            },
            verificationFailed: (FirebaseAuthException exception) {
              if (exception.code == 'invalid-phone-number') {
                errorMessage = exception.code;
                print('The provided phone number is not valid.');
              } else {
                errorMessage = exception.code;
              }
            });
      } catch (e) {
        errorMessage = e.toString();
        handleError(e, context);

        notifyListeners();
      }
    }
  }

  void signIn({
    BuildContext context,
    String smsOTP,
  }) async {
    try {
      final AuthCredential _authCredential = PhoneAuthProvider.credential(
        verificationId: verificationCode,
        smsCode: smsOTP,
      );

      final UserCredential _userResult =
          await _auth.signInWithCredential(_authCredential).then(
        (value) => value,
        onError: (er) {
          print(er);
        },
      );
      final User currentUser = _auth.currentUser;
      assert(_userResult.user.uid == currentUser.uid);
      Navigator.pop(context);
      if (_userResult != null) {
        this.isLoggedIn = true;
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            (route) => false);
      }
    } catch (e) {
      print("${e.toString()}");
    }
  }

  Future signOut(BuildContext context) async {
    await Future<void>.delayed(Duration(seconds: 1));
    var _shredPref = await SharedPreferences.getInstance();
    _shredPref.clear();
    await _auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => Login()));
  }

  // Future<bool> isNumberExist(String number) async {
  //   var qs = await FirebaseFirestore.instance.collection('partners').where('phone', isEqualTo: number).limit(1).get();

  //   return qs.docs.isNotEmpty;
  // }

  String userMapString(User user) {
    return jsonEncode(<String, dynamic>{
      'phoneNumber': user.phoneNumber,
      'uid': user.uid,
    });
  }
}
