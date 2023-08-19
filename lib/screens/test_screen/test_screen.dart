import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  String text;
  TestScreen({required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "$text",
          style: TextStyle(
            fontSize: 40,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}

