import 'package:flutter/material.dart';

import 'package:sssi/widgets/drawer.dart';

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
      body: Center(
        child: Container(
          child: Text("Welcome to OUR APP SSSI"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
