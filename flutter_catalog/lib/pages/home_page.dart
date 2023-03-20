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
          title: Text("This is my firt app!!\n I will develop a faadu app"),
        ),
        body: Center(
          child: Container(
            child: Text(
              "This is my first app",
              style: TextStyle(
                  fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        drawer: Drawer());
  }
}
