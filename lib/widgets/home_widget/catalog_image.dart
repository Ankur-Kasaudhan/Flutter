// ignore_for_file: import_of_legacy_library_into_null_safe, implementation_imports, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/flutter/container.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);
  }
}
