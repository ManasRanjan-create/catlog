// ignore_for_file: deprecated_member_use, unnecessary_null_comparison, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';



class HomeDetailpage extends StatelessWidget {
  final Item catalog;

  const HomeDetailpage({ Key? key, required this.catalog})
  :assert(catalog != null),
   super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children:[
                  "\$${catalog.price}".text.bold.xl4.orange600.make(),
                  AddToCart(catalog: catalog,)
                  .wh(120,50)
                  ],).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag:Key(catalog.id.toString()),
              child:Image.network(catalog.image),
      ).h32(context),
      Expanded(
        child: VxArc(
          height: 35.0,
          arcType: VxArcType.CONVEY,
          edge: VxEdge.TOP,
          child: Container(
            color: context.cardColor,
            width: context.screenWidth,
            child: Column(
              children: [
              catalog.name.text.xl4.color(context.accentColor).bold.make(),
              catalog.desc.text.color(context.accentColor).xl.make(),
              10.heightBox,
              "Minim adipisicing tempor do qui cupidatat amet aliquip laborum culpa. Laboris amet eiusmod id cupidatat ad. Cillum sint laboris sit veniam. Esse quis occaecat culpa reprehenderit. Minim laborum sint nisi excepteur aliqua. Occaecat excepteur pariatur nostrud aliqua consectetur et laborum aliquip qui velit aliquip. Voluptate ullamco labore proident nisi sint aliquip id consectetur duis amet in labore commodo proident."
              .text
              .color(context.accentColor)
              .make()
              .p16(),
              ],
            ).py64(),
          ),
        ))
      ],
      ),
      ),
      );
  }
}



