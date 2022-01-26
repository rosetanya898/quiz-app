import 'package:flutter/material.dart';
import 'package:quiz/pages/result.dart';
import 'package:quiz/widgets/op.dart';

import '../../constants.dart';

class Ques5 extends StatelessWidget {
  Ques5(this.sum5);
  late int sum5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
           color: Colors.indigo,
           height: 100,
          ),
          Text(ques5, style: TextStyle(fontSize: 40),),
         Option(opt: "Goa",mark: (newCount){sum5 = sum5 + newCount;},),
         Option(opt: "Lakshadweep",mark: (newCount){sum5 = sum5 + newCount;},),
         Option(opt: "Pondicherry",mark: (newCount){sum5 = sum5 + newCount;},),
         Option(opt: "Diu and Daman",mark: (newCount){sum5 = sum5 + newCount;},),
         Padding(padding: const EdgeInsets.only(top: 8.0)),
         GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, 
              MaterialPageRoute(
                builder: (context){
                  return ResultPage(sum5);
                }));
            },
            child: Container(
              color: Colors.indigoAccent,
              height: 50,
              width: 200,
              child: Center(
                child: Text("Submit",
                style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
            ),
          )
        ],
      ),
    );
  }
}