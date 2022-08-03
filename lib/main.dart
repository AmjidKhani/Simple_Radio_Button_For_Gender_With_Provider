import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radiooo/controller_for_changestate.dart';
import 'package:radiooo/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
        create: (_)=>

      controlller(),

    child:MaterialApp(

      home: radioobutton(),
    ),
    );

  }
}

