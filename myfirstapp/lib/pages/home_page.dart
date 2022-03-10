import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "Harwinder Singh working in OAE SOLUTIONS";

    return Scaffold(
      appBar: AppBar(
        title: const Text("myapp"),
      ),
      body: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 19, 4, 223),
            fontSize: 20,
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
