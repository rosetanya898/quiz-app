import 'package:flutter/material.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/pages/questions/q1.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 420,
            decoration: BoxDecoration(
              color: Colors.purple[800],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
          ),
          Container(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(begin,style: TextStyle(fontSize: 40, color: Colors.white),),
              Padding(padding: const EdgeInsets.all(10.0)),
              Text(correct,style: TextStyle(fontSize: 30,color: Colors.green),),
              Text(incorrect,style: TextStyle(fontSize: 30,color: Colors.red),),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
              return Ques1();
          },));
                }, 
                child: Text("Take test"))
            ],),
          ),
        ],
      )
    );
  }
}