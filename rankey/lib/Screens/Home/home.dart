//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rankey/Screens/Home/CategorySelector.dart';
import 'package:rankey/Screens/Home/MovieCards.dart';

import 'package:rankey/Screens/Home/Search.dart';

class MyHomePage extends StatefulWidget {

//  final String title;
  MyHomePage( );
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  _MyHomePageState();

  String language = "All";
  Set<String> languages;
  @override

  Widget build(BuildContext context) {
    final List a = [["c","d"],["a","b"],["e","f"],["a","b"],["e","f"]];
    final List b = [["a","b"],["c","d"],["e","f"],["c","d"],["e","f"]];
    final List c = [["e","f"],["a","b"],["c","d"],["a","b"],["c","d"]];
    language = language == null ? 'All' : language;
    languages = Set.from(['All']);
//    scores.forEach((element) {
//      print(element.qTopic);
      languages.add("English");
      languages.add("Malayalam");
      languages.add("Tamil");
      languages.add("Hindi");
//    });
    return Scaffold(
        resizeToAvoidBottomInset:false,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
//        backgroundColor: Theme.of(context).backgroundColor,
        title: Text("Rankey"),
        actions: <Widget>[
          Search(),
          SizedBox(width: 10,),
          Icon(Icons.search),SizedBox(width: 10,)],
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Container(
//        color: Colors.red,
        child: Column(
          children:<Widget>[
            CategorySelector(),

            SizedBox(
              height: 40,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10,6,10,4),
                child: Container(
                  decoration:BoxDecoration(borderRadius:BorderRadius.circular(8),color: Colors.black),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text("Language",style: TextStyle(fontSize: 12,color: Colors.white),),
                      Spacer(),
                      Container(
                        color: Colors.white,
                        child: SizedBox(width: 100,
                          height: 16,
                          child: Center(
                            child: DropdownButton<String>(
                              value: language,
                              style: TextStyle(fontSize: 11,color: Colors.black),
                              onChanged: (String newVal) {
                                setState(() {
                                  language = newVal;
                                });
                                },
                            items: languages.map((item) {
                              return DropdownMenuItem(
                                  value: item, child: Text(item));
                            }).toList(),
                        ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30,)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10,4,10,4.0),
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.white),

                    child: Column(
                      children: [
                        Cards("Top 10 this Year",a),
                        Cards("New Movies",b),
                        Cards("Top 100",c),
                        Spacer()
                      ],
                    )
                ),
              ),
            ),]
        ),
      )
    );
  }
}


