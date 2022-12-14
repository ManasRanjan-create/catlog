import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;

  MyStore(
    this.catalog,
    this.cart,
  ) {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }

}
