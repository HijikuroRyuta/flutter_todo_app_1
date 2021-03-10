import 'package:flutter/material.dart';
import 'package:management/HomeScreen/Atom/todoIcon.dart';

Widget homeScreenMolecule(bloc) {
  return StreamBuilder(
    stream: bloc.createTodoList,
    builder: (context, snapshot) {
      return GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          bloc.todoList.length,
          (index) {
            return bloc.todoList.length != 0
                ? todoIcon(bloc, context, index)
                : Container();
          },
        ),
      );
    },
  );
}
