import 'package:flutter/material.dart';
import 'package:management/ListView/listView.dart';
import 'package:management/TodoScreen/Atom/popupMenuButton.dart';
import '../../Bloc/Bloc.dart';

class TodoScreen extends StatelessWidget {
  List todo;
  String date;
  Bloc bloc;
  int index;

  TodoScreen(this.todo, this.date, this.bloc, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(date),
        actions: [
          popupMenuButton(context, bloc, index),
        ],
      ),
      body: listView(bloc, todo, "未定"),
    );
  }
}
