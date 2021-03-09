import 'package:flutter/material.dart';

Widget passWardForm() {
  return Padding(
    padding: EdgeInsets.only(bottom: 70, top: 50),
    child: TextField(
      decoration: InputDecoration(
        labelText: 'パスワード',
      ),
      keyboardType: TextInputType.text,
    ),
  );
}
