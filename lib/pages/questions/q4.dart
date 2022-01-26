import 'package:flutter/material.dart';
import 'package:quiz/pages/questions/q5.dart';
import 'package:quiz/widgets/op.dart';

import '../../constants.dart';

class Ques4 extends StatelessWidget {
 Ques4(this.sum4);

  late int sum4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
           color: Colors.indigo,
           height: 100,
          ),
          Text(ques4, style: TextStyle(fontSize: 40),),
         Option(opt: "Elephant",mark: (newCount){sum4 = sum4 + newCount;},),
         Option(opt: "Deer",mark: (newCount){sum4 = sum4 + newCount;},),
         Option(opt: "Cow",mark: (newCount){sum4 = sum4 + newCount;},),
         Option(opt: "Tiger",mark: (newCount){sum4 = sum4 + newCount;},),
         Padding(padding: const EdgeInsets.only(top: 8.0)),
         GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, 
              MaterialPageRoute(
                builder: (context){
                  return Ques5(sum4);
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