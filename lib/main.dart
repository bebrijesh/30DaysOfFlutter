import 'package:flutter/material.dart';
import 'package:flutter_codepur/screens/home_screen.dart';
import 'package:flutter_codepur/screens/login_screen.dart';
import 'package:flutter_codepur/utils/routes.dart';
import 'package:flutter_codepur/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/HomeScreen",
      routes: {
        "/": (context) => LoginScreen(),
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
      },
    );
  }
}
