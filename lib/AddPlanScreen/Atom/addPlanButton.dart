import 'package:flutter/material.dart';

Widget addPlanButton(context, bloc) {
  return Center(
    child: RaisedButton(
      color: Colors.purple[700],
      shape: StadiumBorder(),
      child: Text(
        "OK",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        bloc.planAddAction.add(bloc.planText.text);
        Navigator.of(context).pop();
      },
    ),
  );
}
