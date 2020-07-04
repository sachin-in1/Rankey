import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  final String category = "Movies";
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  String category = "Movies";
  @override
  Widget build(BuildContext context) {
    List categories = ["Movies", "TV Series", "Anime"];
    return Container(
      height: 40,
      child: Row(
        children: [
          Container(width: 35,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(16),topRight:Radius.zero ,bottomLeft:Radius.circular(16),bottomRight:Radius.zero ),color: Colors.white),
//
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, position) {
                    return  Card(
                      elevation: 0,
                      child: MaterialButton(
                        child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(categories[position].toString(), style: TextStyle(fontSize: categories[position]==category?16.0:15,letterSpacing: 2.3,color: categories[position]==category?Colors.black:Colors.black54),),
                        ),
                        onPressed: (){print(categories[position]);
                        setState(() {
                          category = categories[position];
                        });},
                      ),
                    );
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}