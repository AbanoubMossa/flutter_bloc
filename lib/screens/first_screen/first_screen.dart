import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final String text;

  const FirstScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
