import 'package:flutter/material.dart';
import 'package:management/HomeScreen/Page/homeScreenPage.dart';
import 'package:management/LoginScreen/Atom/textWidget.dart';

Widget loginButtonForm(context, bloc) {
  return ButtonTheme(
    minWidth: 200.0,
    height: 40.0,
    child: RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(bloc), //ホーム画面に移動
          ),
        );
      },
      child: text("ログイン", Colors.white),
      shape: StadiumBorder(),
    ),
  );
}
