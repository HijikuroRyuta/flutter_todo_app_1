import 'package:flutter/material.dart';

Widget planName(bloc) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: TextFormField(
      controller: bloc.planText,
      decoration: const InputDecoration(
        hintText: '予定の名前',
      ),
    ),
  );
}
