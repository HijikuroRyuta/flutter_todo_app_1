import 'package:flutter/material.dart';
import 'package:management/CreatePlanScreen/Atom/textWidget.dart';

Widget createPlanButton(context, bloc) {
  return Center(
    child: RaisedButton(
      color: Colors.purple[700],
      shape: StadiumBorder(),
      child: createPlanText("予定作成", Colors.white),
      onPressed: () {
        bloc.createTodoAction.add(bloc.planList);
        Navigator.pop(context);
      },
    ),
  );
}
