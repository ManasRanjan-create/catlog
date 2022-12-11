// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';


class AddToCart extends StatelessWidget {
  final Item catalog;
  const AddToCart({
    Key? key, required this.catalog, 
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    VxState.watch(context,on: [AddMutation,RemoveMutation]);
      final CartModel _cart = (VxState.store as MyStore).cart;
     // final CatalogModel _catalog = (VxState.store as MyStore).catalog;
      bool isInCart = _cart.items.contains(catalog);
//bool isInCart = _cart.items.contains(catalog) ?? false;

      return ElevatedButton(onPressed: () {
      isInCart = isInCart.toggle();
      if (!isInCart){
        //isInCart = isInCart.toggle();
        AddMutation(item: catalog);
       // final _catalog = CatalogModel();
      //_cart.add(catalog);
     // setState(() {});
    }
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        MyTheme.darkBluishColor),
        shape: MaterialStateProperty.all(
          StadiumBorder(),
        )),
         child: isInCart ? Icon(Icons.done):
         Icon(CupertinoIcons.cart_fill_badge_plus),
         );
    
  }
}