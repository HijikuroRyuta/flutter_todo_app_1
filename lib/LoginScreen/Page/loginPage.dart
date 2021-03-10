import 'package:flutter/material.dart';
import 'package:management/Bloc/Bloc.dart';

import '../Templates/loginTemplates.dart';

class LoginPage extends StatelessWidget {
  Bloc bloc;

  LoginPage(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginTemplates(context, bloc),
    );
  }
}
