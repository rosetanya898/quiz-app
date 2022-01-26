import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  Option({this.opt, required this.mark});
  final ValueChanged<int> mark;
  final opt;

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  bool fill = false;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
     child: GestureDetector(
       child: (fill)?
       Container(
         alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
         child: Text(widget.opt,style: 
         TextStyle(color: Colors.white),), 
         color: Colors.amber,) :
          Container(
            child: Text(widget.opt),
            alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFC1C1C1)),
          borderRadius: BorderRadius.circular(15)),),
        onTap: (){
          setState(() {
            fill = !fill;
            if((widget.opt=="28")||(widget.opt=="Andhra Pradesh")
            ||(widget.opt=="Madras")||(widget.opt=="Tiger")||(widget.opt=="Pondicherry"))
              count = count + 2;
            else {count = count - 1;}
          });
          widget.mark(count);
        },
       ),
    );
  }
}