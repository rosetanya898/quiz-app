import 'package:flutter/material.dart';

class SplashWr extends StatelessWidget {
  const SplashWr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Container(
          child: Column(
                  children: [
                    Text(
                      'How well do you know',
                      style: TextStyle(
                        color: Colors.deepOrange[800],
                        fontFamily: 'Fredericka the Great',
                        fontSize: 80.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                       'India',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Fredericka the Great',
                        fontSize: 120.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}