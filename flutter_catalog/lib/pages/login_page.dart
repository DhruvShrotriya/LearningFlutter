import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "assets/images/Login_img.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 42),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter user name", labelText: "User name"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     //print("Hello Dhruv");
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  // )
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebutton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changebutton ? 50 : 120,
                      height: 50,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changebutton ? 25 : 8)),
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
