// ignore_for_file: prefer_const_constructors, unused_local_variable, deprecated_member_use, invalid_language_version_override
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/cart_page.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/login_page.dart';
import 'package:flutter_application_2/utiles/routes.dart';
import 'package:flutter_application_2/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Data Types in dart
    int days = 30;
    double pii = 3.14;
    bool isMale = true;
    num temp = 30; //we can use it for both float and integer:
    String name = "Ankur kasaudhna";
    var day =
        "tuesday"; //we can use for any data type compiler will decide whether it is (integer float string) ...and so on
    const pi = 3.14; //we can not change const value

    return MaterialApp(
      themeMode: ThemeMode.system, //theme
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false, //removing Debug Banner

      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(), //creating pages for the app
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
