// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Ankur kasaudhn";
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Catalog App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text('Welcome to $days the App  $name'),
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: Drawer(),
    );
  }
}
