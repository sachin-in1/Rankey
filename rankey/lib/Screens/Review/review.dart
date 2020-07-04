//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:rankey/Screens/Home/Search.dart';

class ReviewPage extends StatefulWidget {

  final String title;
  ReviewPage( this.title);
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {

  _ReviewPageState();

//  String language = "All";
//  Set<String> languages;
  @override

  Widget build(BuildContext context) {
//    final List a = [["c","d"],["a","b"],["e","f"],["a","b"],["e","f"]];
//    final List b = [["a","b"],["c","d"],["e","f"],["c","d"],["e","f"]];
//    final List c = [["e","f"],["a","b"],["c","d"],["a","b"],["c","d"]];
//    language = language == null ? 'All' : language;
//    languages = Set.from(['All']);
////    scores.forEach((element) {
////      print(element.qTopic);
//      languages.add("English");
//      languages.add("Malayalam");
//      languages.add("Tamil");
//      languages.add("Hindi");
////    });
    return Scaffold(
        resizeToAvoidBottomInset:false,
      backgroundColor: Colors.black,
      appBar: AppBar(
//        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(widget.title),
        actions: <Widget>[
          Search(),
          SizedBox(width: 10,),
          Icon(Icons.search),SizedBox(width: 10,)],
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children:<Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10,4,10,4.0),
                child: Container(
                    decoration: BoxDecoration(color: Colors.white),

                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8,8,8,0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10)
                                      ),
                                      border: Border(
                                        right: BorderSide(color: Theme.of(context).primaryColor),
                                          left: BorderSide(color: Theme.of(context).primaryColor),
                                          top: BorderSide(color: Theme.of(context).primaryColor),
                                        bottom: BorderSide(color: Theme.of(context).primaryColor)
                                      )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        children:<Widget>[
                                          Text("Avatar",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.black),)]

                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8,0,8,8),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),border: Border.all(color: Theme.of(context).primaryColor)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                children:<Widget>[
                                  Text("Watching \"Avatar,\" I felt sort of the same as when I saw \"Star Wars\" in 1977. That was another movie I walked into with uncertain expectations. James Cameron's film has been the subject of relentlessly dubious advance buzz, just as his \"Titanic\" was. Once again, he has silenced the doubters by simply delivering an extraordinary film. There is still at least one man in Hollywood who knows how to spend \$250 million, or was it \$300 million, wisely.\"Avatar\" is not simply a sensational entertainment, although it is that. It's a technical breakthrough. It has a flat-out Green and anti-war message. It is predestined to launch a cult. It contains such visual detailing that it would reward repeating viewings. It invents a new language, Na'vi, as \"Lord of the Rings\" did, although mercifully I doubt this one can be spoken by humans, even teenage humans. It creates new movie stars. It is an Event, one of those films you feel you must see to keep up with the conversation."),
                                    Text("Watching \"Avatar,\" I felt sort of the same as when I saw \"Star Wars\" in 1977. That was another movie I walked into with uncertain expectations. James Cameron's film has been the subject of relentlessly dubious advance buzz, just as his \"Titanic\" was. Once again, he has silenced the doubters by simply delivering an extraordinary film. There is still at least one man in Hollywood who knows how to spend \$250 million, or was it \$300 million, wisely.\"Avatar\" is not simply a sensational entertainment, although it is that. It's a technical breakthrough. It has a flat-out Green and anti-war message. It is predestined to launch a cult. It contains such visual detailing that it would reward repeating viewings. It invents a new language, Na'vi, as \"Lord of the Rings\" did, although mercifully I doubt this one can be spoken by humans, even teenage humans. It creates new movie stars. It is an Event, one of those films you feel you must see to keep up with the conversation."),
                                Text("Watching \"Avatar,\" I felt sort of the same as when I saw \"Star Wars\" in 1977. That was another movie I walked into with uncertain expectations. James Cameron's film has been the subject of relentlessly dubious advance buzz, just as his \"Titanic\" was. Once again, he has silenced the doubters by simply delivering an extraordinary film. There is still at least one man in Hollywood who knows how to spend \$250 million, or was it \$300 million, wisely.\"Avatar\" is not simply a sensational entertainment, although it is that. It's a technical breakthrough. It has a flat-out Green and anti-war message. It is predestined to launch a cult. It contains such visual detailing that it would reward repeating viewings. It invents a new language, Na'vi, as \"Lord of the Rings\" did, although mercifully I doubt this one can be spoken by humans, even teenage humans. It creates new movie stars. It is an Event, one of those films you feel you must see to keep up with the conversation."),
                                ]

                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),
            ),]
        ),
      )
    );
  }
}


