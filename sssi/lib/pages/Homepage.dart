import 'package:flutter/material.dart';

import 'package:sssi/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SSSI"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Container(
        child: Text("Welcome to OUR APP SSSI"),
      )),
      drawer: MyDrawer(),
    );
  }
}
