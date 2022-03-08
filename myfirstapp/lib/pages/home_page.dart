import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "Harry working in OAE SOLUTIONS";

    return Scaffold(
      appBar: AppBar(
        title: const Text("myapp"),
      ),
      body: Center(
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
