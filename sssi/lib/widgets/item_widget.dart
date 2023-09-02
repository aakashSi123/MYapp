import 'package:flutter/material.dart';

import '../Models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed iphone 12 pro max ");
        },
        leading: Image.network(item.Image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$ ${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}