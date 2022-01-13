import 'package:flutter/material.dart';
import 'package:flutter_catelog/models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(item.image),
    );
  }
}
