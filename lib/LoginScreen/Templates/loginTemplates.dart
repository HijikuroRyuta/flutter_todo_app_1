import 'package:flutter/material.dart';
import 'package:management/LoginScreen/Atom/loginButton.dart';
import 'package:management/LoginScreen/Atom/loginIdForm.dart';
import 'package:management/LoginScreen/Atom/passwardForm.dart';
import 'package:management/LoginScreen/Atom/topicName.dart';

Widget loginTemplates(context, bloc) {
  return Container(
    padding: EdgeInsets.all(50),
    child: Column(
      children: <Widget>[
        topicName(),
        loginIdForm(),
        passWardForm(),
        loginButtonForm(context, bloc),
      ],
    ),
  );
}
