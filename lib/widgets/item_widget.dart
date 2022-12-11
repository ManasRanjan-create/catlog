// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
   final Item  item;

  const ItemWidget({Key? key, required this.item}) 
  :super(key: key);

  
  @override
  build(BuildContext context)  async {
    return Card(
      shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          // ignore: avoid_print
          print("${item.name}pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color:Colors.blue,
            fontWeight: FontWeight.bold
            ),
          
    
          ),
    
    
        
      ),
    );
  }
}