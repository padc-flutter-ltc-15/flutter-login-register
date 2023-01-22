
import 'package:flutter/material.dart';
import 'package:flutterloginscreen/myApp.dart';
import 'package:flutterloginscreen/screens/loginScreen.dart';
import 'package:flutterloginscreen/screens/signUpScreen.dart';

void main() {
  //runApp(const MyApp());

  runApp(
      const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignUpScreen()
      )
  );
}
