import 'package:flutter/material.dart';
import 'package:flutter_codepur/screens/home_screen.dart';
import 'package:flutter_codepur/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/HomeScreen",
      routes: {
        "/": (context) => LoginScreen(),
        "/HomeScreen": (context) => HomeScreen(),
        "/LoginScreen": (context) => LoginScreen(),
      },
    );
  }
}
