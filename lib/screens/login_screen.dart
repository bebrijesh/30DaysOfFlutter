import 'package:flutter/material.dart';
import 'package:flutter_codepur/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = '';
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20.0,
              // child: Text("This is SizedBox & it can take text widget"),
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
                      hintText: "Enter your username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     debugPrint("ButtonPressed");
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     minimumSize: const Size(120, 40),
                  //   ),
                  //   child: const Text("Button"),
                  // ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      // ignore: use_build_context_synchronously
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      alignment: Alignment.center,
                      width: changeButton ? 50 : 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape:
                        //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
