import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rankey/shared/constants.dart';
import 'package:rankey/Router/Router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
//        primarySwatch: Colors.blue,
      backgroundColor: Colors.red,
        primaryColor: Color(0xffEB5757),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: homeRoute,
//      home: MyHomePage(),
    );
  }
}

