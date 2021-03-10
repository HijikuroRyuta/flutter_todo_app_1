import 'package:flutter/material.dart';
import 'package:management/AddPlanScreen/Templates/addPlanTemplates.dart';

import '../../Bloc/Bloc.dart';

class AddPlanPage extends StatelessWidget {
  //状態管理
  Bloc bloc;

  AddPlanPage(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: Text("TODO"),
      ),
      body: addPlanTemplates(context, bloc),
    );
  }
}
