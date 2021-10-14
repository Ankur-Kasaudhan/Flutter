// ignore_for_file: unused_field, non_constant_identifier_names, unnecessary_null_comparison

import 'package:flutter_application_2/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;
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

  //add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
