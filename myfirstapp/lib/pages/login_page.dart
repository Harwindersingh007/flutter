import 'package:flutter/material.dart';
import 'package:myfirstapp/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Enter username",
                            labelText: "Username",
                          ),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                        child: InkWell(
                          onTap: () async {
                            setState(() {
                              changebutton = true;
                            });
                
                            await Future.delayed(const Duration(seconds: 1));
                            await Navigator.pushNamed(context, MyRoutes.homeRoute);
                            setState(() {
                              changebutton = false;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changebutton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changebutton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                      /* ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: const Text("Login"),
                        style:
                            TextButton.styleFrom(minimumSize: const Size(150, 40)),
                      ),*/
                    ],
                  ),
                ),
            
            ],
          ),
        ),
      ),
    );
  }
}
