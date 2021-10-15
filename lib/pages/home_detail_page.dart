// ignore_for_file: import_of_legacy_library_into_null_safe, unused_import, use_key_in_widget_constructors, unnecessary_null_comparison, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/catalog.dart';
import 'package:flutter_application_2/widgets/home_widget/add_to_cart.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              AddToCart(
                catalog: catalog,
              ).wh(150, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(context.accentColor)
                          .bold
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      "nhf hfyuue nchuueo nchyroe mnchuie oowlaiudud bvhnfy mncjyeoo nhf hfyuue nchuueo nchyroe mnchuie oowlaiudud bvhnfy mncjyeoo nhf hfyuue nchuueo nchyroe mnchuie oowlaiudud bvhnfy mncjyeoo nhf hfyuue nchuueo nchyroe mnchuie oowlaiudud bvhnfy mncjyeoo nhf hfyuue nchuueo nchyroe mnchuie oowlaiudud bvhnfy mncjyeoo nhf hfyuue nchuueo nchyroe mnchuie oowlaiudud bvhnfy mncjyeoo nhf hfyuue nchuueo nchyroe mnchuie oowlaiudud bvhnfy mncjyeoo nhf hfyuue nchuueo nchyroe mnchuie oowlaiudud bvhnfy mncjyeoo"
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16(),
                    ],
                  ).py64(),
                ),
              ))
            ],
          ),
        ));
  }
}
