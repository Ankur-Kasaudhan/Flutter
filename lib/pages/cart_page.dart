// ignore_for_file: use_key_in_widget_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.black.make(),
      ),
    );
  }
}
