// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catelog/models/catelog.dart';
// import 'package:flutter_catelog/widgets/MyDrawer.dart';
// import 'package:flutter_catelog/widgets/item_widget.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            children: [
              "Categlog App".text.make(),
            ],
          ),
        ),
      ),
    );
  }
}


// Grid View and List View
//  return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Catalog App",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         // ignore: unnecessary_null_comparison
//         child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
//             //     ? ListView.builder(
//             //         itemCount: CatalogModel.items.length,
//             //         itemBuilder: (context, index) =>
//             //             ItemWidget(item: CatalogModel.items[index]),
//             //       )
//             ? GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 16,
//                     crossAxisSpacing: 16),
//                 itemCount: CatalogModel.items.length,
//                 itemBuilder: (context, index) {
//                   final item = CatalogModel.items[index];
//                   return Card(
//                       clipBehavior: Clip.antiAlias,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       child: GridTile(
//                           header: Container(
//                             child: Text(
//                               item.name,
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             decoration:
//                                 const BoxDecoration(color: Colors.deepPurple),
//                             padding: const EdgeInsets.all(12),
//                           ),
//                           footer: Container(
//                             child: Text(
//                               item.price.toString(),
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                             decoration:
//                                 const BoxDecoration(color: Colors.black),
//                             padding: const EdgeInsets.all(12),
//                           ),
//                           child: Image.network(item.image)));
//                 })
//             : const Center(
//                 child: CircularProgressIndicator(),
//               ),
//       ),
//       drawer: const MyDrawer(),
//     );
