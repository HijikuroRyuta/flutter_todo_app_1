import 'package:flutter/material.dart';
import 'package:management/TodoScreen/Todopage/todoPage.dart';

Widget todoIcon(bloc, context, index) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 100,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) {
                            return TodoScreen(bloc.todoList[index].todo,
                                bloc.todoList[index].date, bloc, index);
                          },
                        ),
                      );
                    },
                    child: Text(
                      "ToDo",
                      style: TextStyle(fontSize: 30),
                    ),
                    shape: new CircleBorder(),
                    color: Colors.yellow,
                  ),
                ),
                Text(bloc.todoList[index].date),
              ],
            ),
            width: 150,
            height: 150,
          ),
        ),
      ],
    ),
  );
}
