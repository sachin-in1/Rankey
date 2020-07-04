import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      child: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: Container(
//                height: 20,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: TextFormField(
                // decoration: textInputDecoration.copyWith(hintText: 'email'),
                validator: (val) =>
                val.isEmpty ? 'Enter an email' : null,
                onTap: () {
//        setState(() {
//          error = '';
//        });
//      },
//      onChanged: (val) {
//        setState(() => email = val);
                },
                maxLines: 1,
                maxLengthEnforced:true,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
//                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white,style: BorderStyle.solid)),
                    hintText: "Search . . ",
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(fontSize: 14),

                    fillColor: Colors.white,
//                      labelText: 'EMAIL',
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
//                disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    labelStyle: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.grey,fontSize: 16),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent))
                ),
              ),
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}