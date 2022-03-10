import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/home_page.dart';
import 'package:myfirstapp/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/",
      routes: {
        "/": (context) => const Loginpage(),
        MyRoutes.loginRoute: (context) => const Loginpage(),
        MyRoutes.homeRoute: (context) => const homePage(),
      },
    );
  }
}
