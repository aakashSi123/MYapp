import 'package:flutter/material.dart';
import 'package:sssi/Models/catalog.dart';

import 'package:sssi/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0, // ilne ko zero kar raha hai yaha par
        // ignore: prefer_const_constructors
        // iconTheme: IconThemeData(
        //   color: Colors.black,
        // ),
        centerTitle: true,
        title: Text(
          "SSSI",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
