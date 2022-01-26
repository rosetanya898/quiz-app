import 'package:flutter/material.dart';
import 'package:quiz/pages/questions/q3.dart';
import 'package:quiz/widgets/op.dart';

import '../../constants.dart';

class Ques2 extends StatelessWidget {
  Ques2(this.sum2);
  late int sum2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
           color: Colors.indigo,
           height: 100,
          ),
          Text(ques2, style: TextStyle(fontSize: 40),),
          Option(opt: "Andhra Pradesh",mark: (newCount){sum2 = sum2 + newCount;},),
          Option(opt: "Bombay",mark: (newCount){sum2 = sum2 + newCount;},),
          Option(opt: "Madhya Bharat",mark: (newCount){sum2 = sum2 + newCount;},),
          Option(opt: "Meghalaya",mark: (newCount){sum2 = sum2 + newCount;},),
          Padding(padding: const EdgeInsets.only(top: 8.0)),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, 
              MaterialPageRoute(
                builder: (context){
                  return Ques3(sum2);
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