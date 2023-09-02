import 'package:flutter/material.dart';
import 'package:sssi/pages/Homepage.dart';
import 'package:sssi/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sssi/utils/routes.dart';
import 'package:sssi/widgets/drawer.dart';
import 'package:sssi/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.loginRoute,
        routes: {
          "/": (context) => login_page(),
          MyRoutes.homeRoute: (context) => Homepage(),
        });
  }
}
