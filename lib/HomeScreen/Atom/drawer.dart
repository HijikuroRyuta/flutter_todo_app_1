import 'package:flutter/material.dart';
import 'package:management/CreatePlanScreen/Page/createPlanPage.dart';

Widget drawer(context, bloc) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'メニュー',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
        ),
        ListTile(
          title: Text('予定作成'),
          onTap: () {
            bloc.addTodo();
            bloc.resetTodoDate();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreatePlanPage(bloc), //予定作成画面に移動
              ),
            );
          },
        ),
      ],
    ),
  );
}
