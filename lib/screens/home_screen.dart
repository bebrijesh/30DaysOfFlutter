import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App title"),
      ),
      body: Center(
        child: Container(
          child: Text("$days, $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
