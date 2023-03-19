import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("This is my firt app"),
        ),
        body: Center(
          child: Container(
            child: Text("This is my first app"),
          ),
        ),
        drawer: Drawer());
  }
}
