import 'package:flutter/material.dart';
import 'package:flutter_catelog/widgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Krishna Jhapate";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Hello $name "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
