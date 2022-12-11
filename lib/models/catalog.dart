// ignore_for_file: unrelated_type_equality_checks, null_closures

import 'dart:convert';



class CatalogModel{
  static  List<Item>  items = items;
  
  

  
  // get item by ID
  Item getById(int id) =>
  items.firstWhere((element) => element.id == id , orElse:null);


  // get item by position
 Item getByPosition(int pos) => items[pos];
 // Item( 
   // id: "1",
  //name: "iPhone 12 pro",
  //desc: "Apple iPhone 12 Generation",
  //price: 999,
  //color: "#33505a",
  //image:"https://www.google.com/search?q=iphone+12+pro+%2333505a+images&rlz=1C1CHBF_enIN970IN970&sxsrf=APq-WBsgbIYDcc-7GdKB4WNtTNXwGi3qIA:1643574295559&tbm=isch&source=iu&ictx=1&vet=1&fir=yIr_G3p4GpNWeM%252CdSdw7NJE-cwvQM%252C_%253BLej4AANvzRMalM%252CdSdw7NJE-cwvQM%252C_%253BtX3EtA-VYtsdhM%252CtRngmMxYyhRSzM%252C_%253BmNd6FozzT7ogiM%252CH4VTx-TtpWoMxM%252C_%253Bc8o3P3ld8pXOPM%252Ck4XEcYDff1-pdM%252C_%253BRIqlhVFXKZOYyM%252CvzXl5li2Su9JiM%252C_%253Bc49NClUJ8_WZeM%252CosPonFcsA6If0M%252C_%253B4MHtDDe5-CLDVM%252CLm0o6ERhn7jcXM%252C_%253BoKiamJEZYsbI7M%252CvzXl5li2Su9JiM%252C_%253Bsaf4HeFxJoKPSM%252CyAsZU4z0sJHsPM%252C_&usg=AI4_-kQnsdFylgZ6dyUHDU39RjaojnJ0Vw&sa=X&ved=2ahUKEwjYwLGwp9r1AhWtSGwGHdDABHgQ9QF6BAgKEAE#imgrc=4MHtDDe5-CLDVM"
      //),
  
}


class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  

  Item copyWith({
    String? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      price: map['price'] ?? 0,
      color: map['color'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
}

