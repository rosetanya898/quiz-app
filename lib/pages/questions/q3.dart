import 'package:flutter/material.dart';
import 'package:quiz/pages/questions/q4.dart';
import 'package:quiz/widgets/op.dart';

import '../../constants.dart';



class Ques3 extends StatelessWidget {
  Ques3(this.sum3);
  late int sum3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
           color: Colors.indigo,
           height: 100,
          ),
          Text(ques3, style: TextStyle(fontSize: 40),),
         Option(opt: "Mysore",mark: (newCount){sum3 = sum3 + newCount;},),
         Option(opt: "Madras",mark: (newCount){sum3 = sum3 + newCount;},),
         Option(opt: "Bombay",mark: (newCount){sum3 = sum3 + newCount;},),
         Option(opt: "Hyderabad",mark: (newCount){sum3 = sum3 + newCount;},),
         Padding(padding: const EdgeInsets.only(top: 8.0)),
         GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, 
              MaterialPageRoute(
                builder: (context){
                  return Ques4(sum3);
                }));
            },
            child: Container(
              color: Colors.indigoAccent,
              height: 50,
              width: 200,
              child: Center(
                child: Text("Next Question",
                style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
            ),
          )
        ],
      ),
    );
  }
}