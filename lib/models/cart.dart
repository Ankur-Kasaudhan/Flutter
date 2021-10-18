// ignore_for_file: unused_field, non_constant_identifier_names, unnecessary_null_comparison, import_of_legacy_library_into_null_safe

import 'package:flutter_application_2/core/store.dart';
import 'package:flutter_application_2/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //catalog feild
  late CatalogModel _catalog;

//collection of Ids -Store Ids of each item
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set Catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items int the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);


}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store.cart._itemIds.remove(item.id);
  }
}
