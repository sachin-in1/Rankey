import 'package:rankey/Screens/Home/home.dart';
import 'package:rankey/Screens/Review/review.dart';
import 'package:rankey/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
  Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case homeRoute:
        print("home");
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case reviewPageRoute:
        return PageTransition(
          child: ReviewPage(
            settings.arguments,
          ),
          type: PageTransitionType.rightToLeft,
          settings: settings,
          duration: Duration(milliseconds: 300),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }