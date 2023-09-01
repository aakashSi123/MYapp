import 'package:flutter/material.dart';
import 'package:sssi/pages/Homepage.dart';
import 'package:sssi/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sssi/utils/routes.dart';
import 'package:sssi/widgets/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => login_page(),
          MyRoutes.homeRoute: (context) => Homepage(),
        });
  }
}
