import 'package:flutter/material.dart';
import 'package:management/Bloc/Bloc.dart';
import '../Templates/createPlanTemplates.dart';

class CreatePlanPage extends StatelessWidget {
  //状態管理
  Bloc bloc;

  CreatePlanPage(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: Text("TODO"),
      ),
      body: createPlanTemplates(context, bloc),
    );
  }
}
