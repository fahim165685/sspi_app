import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF12171D);
const kPrimaryLightColor = Color(0xFF202328);
const kSecondaryColor = Color(0xFF63CF93);
const kTextColor = Color(0xFF6C7174);
const kTextLightColor = Color(0xFF7d8f9a);

const kDefaultPadding  = EdgeInsets.symmetric(horizontal: 15);

final kEmailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "Please Enter your Email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your Password";
const String kShortPassError = "password is too short";
const String kMatchPassError = "Password don't match";