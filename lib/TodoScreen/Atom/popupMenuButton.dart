import 'package:flutter/material.dart';

Widget popupMenuButton(context, bloc, index) {
  return PopupMenuButton<String>(
    onSelected: (String value) {
      bloc.reWriteTodo(context, bloc, index);
    },
    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
      const PopupMenuItem<String>(
        value: "reWrite",
        child: Text('編集'),
      ),
    ],
  );
}
