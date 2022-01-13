import 'package:flutter/material.dart';
import 'package:flutter_catelog/models/catelog.dart';
import 'package:flutter_catelog/widgets/MyDrawer.dart';
import 'package:flutter_catelog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogModel.items[index]);
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
