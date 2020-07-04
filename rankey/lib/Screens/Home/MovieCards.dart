import 'package:flutter/material.dart';
import 'package:rankey/shared/constants.dart';


class Cards extends StatelessWidget {
  final List a ;
  final String type ;
  Cards(this.type,this.a);

  @override
  Widget build(BuildContext context) {
    print(a);
    return Container(
//      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0,3,0,3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Row(children:<Widget>[SizedBox(width: 10),Text(type,textAlign: TextAlign.left,)]),
            SizedBox(height: 4,),
            Container(
//              color: Theme.of(context).primaryColor,
              height: type=="New Movies"?(MediaQuery.of(context).size.height-AppBar().preferredSize.height)*0.3:(MediaQuery.of(context).size.height-AppBar().preferredSize.height)*0.175,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return  Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.475,
                          child:Padding(
                            padding:EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.05,0,MediaQuery.of(context).size.width*0.05,0),
                            child: MaterialButton(
                              child: Container(

                                decoration:BoxDecoration(borderRadius: BorderRadius.circular(16),border: Border.all(color: Theme.of(context).primaryColor)),

//                              shadowColor:Colors.red,
//                              color:Colors.white,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Text(a[position][0], style: TextStyle(fontSize: 22.0),),
                                  ),
                                ),

                              ),
                              onPressed: (){
                                Navigator.pushNamed(context, reviewPageRoute,arguments: a[position][1].toString());
                              }
                            ),
                          ),
                        ),
                      ),
                      Text(a[position][1].toString().toUpperCase()),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
