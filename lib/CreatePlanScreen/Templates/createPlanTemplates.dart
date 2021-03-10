import 'package:flutter/material.dart';
import 'package:management/CreatePlanScreen/Atom/planList.dart';
import '../Atom/addPlanButton.dart';
import '../Atom/createPlanButton.dart';
import '../Atom/dateParts.dart';
import '../Atom/dayPlanText.dart';
import '../Atom/divider.dart';

Widget createPlanTemplates(context, bloc) {
  return Form(
    child: Container(
      padding: EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            dateParts(bloc),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                addPlanButton(context, bloc),
                createPlanButton(context, bloc),
              ],
            ),
            text(),
            divider(),
            planList(bloc),
          ],
        ),
      ),
    ),
  );
}
