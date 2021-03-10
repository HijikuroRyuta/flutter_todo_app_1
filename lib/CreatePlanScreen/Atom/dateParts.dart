import 'package:flutter/material.dart';

Widget dateParts(bloc) {
  return StreamBuilder(
    stream: bloc.displayDate,
    builder: (context, snapshot) {
      return Padding(
        padding: EdgeInsets.all(20),
        child: TextFormField(
          controller: bloc.todoDate,
          readOnly: true,
          onTap: () {
            bloc.selectDate(context);
          },
          decoration: const InputDecoration(
            hintText: '日付',
            suffixIcon:
                IconButton(icon: Icon(Icons.date_range), onPressed: null),
          ),
        ),
      );
    },
  );
}
