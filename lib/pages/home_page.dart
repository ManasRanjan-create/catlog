// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_null_comparison

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_catalog/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vxstate/vxstate.dart';
//import 'package:http/http.dart'as http;


class  HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days= 99;

  final String name= "Catalog";

  get builder => null;
//final url = "";
  @override
  void initState() {
    super.initState();
     loadData();
  }
  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    final catalogjson= await rootBundle.loadString("assets/files/catalog.json");
   final decodedData = jsonDecode(catalogjson);
   var productsData = decodedData["products"];
   CatalogModel.items = List.from(productsData).map<Item>((item) =>
    Item.fromMap(item)).cast<Item>().toList();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    //final dummyList = List.generate(5, (index) =>CatalogModel.items[0]);
      return Scaffold(
        backgroundColor: context.cardColor,
        floatingActionButton: VxBuilder(
          mutations:
          builder(builder:(context, _) => FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: context.theme.buttonColor,
          child: Icon(CupertinoIcons.cart,
          color: Colors.white,),
          ).badge(color: Vx.red700, size: 25,
          count: _cart.items.length,
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          )),
        ), builder: (BuildContext context, store, VxStatus? status){},),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [CatalogHeader(),
              if(CatalogModel.items !=null && CatalogModel.items.isNotEmpty)
              CatalogList().py16().expand()
              else
              Center(child: CircularProgressIndicator(),)
              ],
            )
            )),
         drawer: MyDrawer(),
      );
  }
}

 


