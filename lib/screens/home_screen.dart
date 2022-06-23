import 'package:flutter/material.dart';
import 'package:flutter_codepur/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App title"),
      ),
      body: Center(
        child: Container(
          child: Text("$days, $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
