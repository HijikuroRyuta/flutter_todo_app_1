import 'package:flutter/material.dart';
import 'package:management/AddPlanScreen/Atom/addPlanButton.dart';
import 'package:management/AddPlanScreen/Atom/planName.dart';

Widget addPlanTemplates(context,bloc) {
  return Form(
    child: Container(
      padding: EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            planName(bloc),
            addPlanButton(context,bloc),
          ],
        ),
      ),
    ),
  );
}
