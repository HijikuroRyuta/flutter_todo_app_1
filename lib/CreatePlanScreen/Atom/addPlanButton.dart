import 'package:flutter/material.dart';
import 'package:management/AddPlanScreen/Page/addPlanPage.dart';
import 'package:management/CreatePlanScreen/Atom/textWidget.dart';

Widget addPlanButton(context, bloc) {
  return Center(
    child: RaisedButton(
      color: Colors.purple[700],
      shape: StadiumBorder(),
      child: createPlanText("予定追加", Colors.white),
      onPressed: () {
        bloc.resetPlanText();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddPlanPage(bloc), //plan作成画面に移動
          ),
        );
      },
    ),
  );
}
