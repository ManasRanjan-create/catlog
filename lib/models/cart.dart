// ignore_for_file: unnecessary_getters_setters, prefer_typing_uninitialized_variables, list_remove_unrelated_type, unnecessary_null_comparison

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';

class CartModel{
  
  //catalog Field
  late CatalogModel _catalog;

   //Collectionof ids - store ids of each item
  final List<int> _itemIds = [];

  var required;

  //get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

   //get items in the cart
   List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

   //get total price
   num get totalPrice =>
   items.fold(0,(total, current) => total + current.price);

   //Add Item
   void add(Item item) {
     _itemIds.add.toString;item.id;
   }

   //remove item
   void remove(Item item) {
     _itemIds.remove(item.id);
     }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation({
    required this.item,
  });
  @override
  perform() {
    store!.cart._itemIds.add.toString;item.id;
  }

}
class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation({
    required this.item,
  });
  @override
  perform() {
    store!.cart._itemIds.remove(item.id);
  }


}