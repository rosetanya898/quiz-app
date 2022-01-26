import 'package:flutter/material.dart';
import 'package:quiz/pages/questions/q2.dart';
import 'package:quiz/widgets/op.dart';

import '../../constants.dart';

class Ques1 extends StatelessWidget {
  late int sum1 = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
           color: Colors.indigo,
           height: 100,
          ),
          Text(ques1, style: TextStyle(fontSize: 40),),
        Option(opt: "14",mark: (newCount){sum1 = sum1 + newCount;},),
        Option(opt: "16",mark: (newCount){sum1 = sum1 + newCount;},),
        Option(opt: "25",mark: (newCount){sum1 = sum1 + newCount;},),
        Option(opt: "28",mark: (newCount){sum1 = sum1 + newCount;},),
         Padding(padding: const EdgeInsets.only(top: 8.0)),
         GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, 
              MaterialPageRoute(
                builder: (context){
                  return Ques2(sum1);
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



