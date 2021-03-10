import 'package:flutter/material.dart';

Widget loginIdForm() {
  return Padding(
    padding: EdgeInsets.only(bottom: 20, top: 50),
    child: TextField(
      decoration: InputDecoration(
        labelText: 'ログインID',
      ),
      keyboardType: TextInputType.text,
    ),
  );
}
