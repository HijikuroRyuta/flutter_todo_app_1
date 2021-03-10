import 'package:flutter/material.dart';
import '../../ListView/listView.dart';

Widget planList(bloc) {
  return StreamBuilder(
    stream: bloc.add,
    builder: (context, snapshot) {
      return bloc.planList[0].length != 0
          ? listView(
              bloc,
              bloc.planList[bloc.planList.length - 1],
              bloc.add,
            )
          : Container();
    },
  );
}
