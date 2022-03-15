import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "Harwinder Singh working in OAE SOLUTIONS";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CatalogApp",
        ),
      ),
      body: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
