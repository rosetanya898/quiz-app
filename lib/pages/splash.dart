import 'package:flutter/material.dart';
import 'package:quiz/widgets/splahwr.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    var d = Duration(seconds: 7);

    Future.delayed(d, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        ),
      );
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/screen-0.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SplashWr(),
        ),
      ),
    );
  }
}

