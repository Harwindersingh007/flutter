import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "Harwinder Singh working in OAE SOLUTIONS";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("myapp"),
      ),
      body: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
