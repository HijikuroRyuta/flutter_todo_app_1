import 'package:flutter/material.dart';
import 'package:management/HomeScreen/Atom/todoIcon.dart';
import '../../Bloc/Bloc.dart';
import '../Atom/drawer.dart';
import '../Molecule/homeScreenTemplete.dart';

class HomeScreen extends StatelessWidget {
  //状態管理
  Bloc bloc;
  HomeScreen(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム"),
      ),
      drawer: drawer(context, bloc),
      body: homeScreenMolecule(bloc),
    );
  }
}
