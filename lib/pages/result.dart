import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(this.result);
  final result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
             Container(
           color: Colors.indigo,
           height: 100,
          ),
            Padding(padding: const EdgeInsets.all(50)),
            (result>4)?
            Column(
              children: [
                Image.asset("images/victory.jpg"),
                Text("Hurray!!! You won", style: TextStyle(fontSize: 40),),
                Text("Your Score is...", style: TextStyle(fontSize: 30),),], ) :
            Column(
              children: [
                Image.asset("images/lost.jpg"),
                Text("Oops, You lost", style: TextStyle(fontSize: 40),),
                Text("Better luck next time", style: TextStyle(fontSize: 30),),
                Text("Your Score is...", style: TextStyle(fontSize: 30),),], ),
           
            Center(child: Text("$result", style: TextStyle(fontSize: 80, color: Colors.red),)),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Take test again"),)],),

    );
  }
}