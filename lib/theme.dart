import 'package:flutter/material.dart';

Color coolBlue = Color(0xff01c5c4);
Color coolerBlue = Color(0xff00ddcc);
Color brightBlue = Color(0xff16f7f2);
Color brightBlueStart = Color(0xff3ffcf3);
Color brightBlueEnd = Color(0xff41e5f9);
Color bingogrey = Color(0xfff8f8f8);

Color firstBlue = Color(0xff5433FF);
Color richBlue = Color(0xFF3513E2);
Color textColor = Color(0xff100000);
Color blueColor = Color(0xff0166FF);
Color blueColor2 = Color(0xff035aa6);
Color blueColorBright = Color(0xff14ffec);
Color blueColorLight = Color(0xff00bbf0);
Color greycardColor = Color(0xffF1F3F5);
Color turquoise = Color(0xff41EAD4);
Color lemon = Color(0xff28df99);
Color lemonGlacier = Color(0xffFBFF12);
Color winterSky = Color(0xffFF206E);
Color brightWhite = Color(0xfffcfefe);
Color creamWhite = Color(0xfff4f4f2);
Color richBlack = Color(0xff0C0F0A);
Color coolGrey = Color(0xffd6e0f0);
Color pineTree = Color(0xff2A2C24);
Color lightWinter = Color(0xFFf1f3f8);
Color eggyellow = Color(0xfffcf876);

ThemeData bingoLight = ThemeData(
  primaryColor: coolerBlue,
  accentColor: richBlack,
  backgroundColor: Colors.white,
  shadowColor: Colors.grey[100],
  scaffoldBackgroundColor: Color(0xfffcfefe),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 13.0, color: Colors.black, fontWeight: FontWeight.normal),
    headline2: TextStyle(
      color: Colors.grey,
      fontSize: 10.0,
    ),
    headline3: TextStyle(fontSize: 18.0, color: Color(0xff28df99), fontWeight: FontWeight.bold),
    headline4: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
    headline5: TextStyle(color: Colors.grey, fontSize: 12),
    headline6: TextStyle(color: Colors.grey[600], fontSize: 14),
    bodyText1: TextStyle(fontSize: 25.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w500),
  ),
);

ThemeData aetrioDark = ThemeData(
  primaryColor: lemon,
  accentColor: richBlack,
  shadowColor: richBlack,
  cardColor: lightWinter,
  backgroundColor: coolGrey,
  scaffoldBackgroundColor: pineTree,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
    headline2: TextStyle(
      color: Colors.white,
      fontSize: 10.0,
    ),
    headline3: TextStyle(fontSize: 18.0, color: Color(0xff28df99), fontWeight: FontWeight.bold),
    headline4: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
    headline5: TextStyle(color: Colors.white, fontSize: 12),
    headline6: TextStyle(color: Colors.grey[600], fontSize: 14),
    bodyText1: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500),
  ),
);
