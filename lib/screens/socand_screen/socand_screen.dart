import 'package:flutter/material.dart';

class SocandScreen extends StatelessWidget {
  final String text;

  const SocandScreen({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Socand Screen"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          )),
      body: Center(
          child: Text(text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ))),
    );
  }
}
