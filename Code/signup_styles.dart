// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';

// Define your colors
final Color primaryColor = Colors.green[900]!;
final Color hintColor = Colors.green[900]!;
final Color textColor = Colors.black;

// Define text styles
final TextStyle titleStyle = TextStyle(
  fontSize: 20,
  fontFamily: 'RobotoSerif',
  color: textColor,
  fontWeight: FontWeight.bold,
);
final TextStyle hintTextStyle = TextStyle(
  color: hintColor,
  fontFamily: 'RobotoSerif',
);

// Define button styles
final ButtonStyle elevatedButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 20),
  ),
);
