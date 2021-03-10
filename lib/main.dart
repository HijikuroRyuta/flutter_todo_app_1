import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Bloc/Bloc.dart';
import 'LoginScreen/Page/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Provider(
        create: (context) => Bloc(),
        dispose: (context, bloc) => bloc.dispose(),
        child: RoginScreen(),
      ),
    );
  }
}

class RoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<Bloc>(context);
    return Scaffold(
      body: LoginPage(bloc),
    );
  }
}
