import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Catalog App"),
      // ),
      body: Center(
        child: Container(
          child: const Text(
            "Login Page ",
            style: const TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      // drawer: Drawer(),
    );
  }
}
