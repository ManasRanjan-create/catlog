// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_detail_page.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_catalog/widgets/home_widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';




class   CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index)  {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap:() => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context)=> HomeDetailpage
              (catalog: catalog),),),
          child:CatalogItem(Catalog: catalog),
          );
      },
      
    );
  }
}
class CatalogItem extends StatelessWidget {
  final Item Catalog;

  const CatalogItem({Key? key, required this.Catalog})
  : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(Catalog.id.toString()),
            child: CatalogImage(
              image: Catalog.image
              ),
            ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Catalog.name.text.lg.color(context.accentColor).bold.make(),
              Catalog.desc.text.color(context.accentColor).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children:[
                "\$${Catalog.price}".text.bold.xl.make(),
                AddToCart(catalog: Catalog)
                ],
                ).pOnly(right: 8.0)
            ],
          ))
        ],
      )
    ).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}

