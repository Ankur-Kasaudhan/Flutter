// ignore_for_file: import_of_legacy_library_into_null_safe, deprecated_member_use, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(context.theme.accentColor).make(),
        "Trending products".text.xl2.make()
      ],
    );
  }
}
