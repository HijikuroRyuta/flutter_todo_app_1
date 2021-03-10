import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

Widget listView(bloc, list, stream) {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: list.length,
    itemBuilder: (BuildContext context, int index) {
      return Column(
        children: [
          Slidable(
            child: Container(
              child: ListTile(
                title: Center(
                  child: Text(list[index]),
                ),
              ),
            ),
            actionPane: SlidableStrechActionPane(),
            actionExtentRatio: 0.2,
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: '削除',
                color: Colors.red,
                icon: Icons.share,
                onTap: () {
                  bloc.deletePlan(list, index, stream);
                },
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      );
    },
  );
}
