// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iphon 12 pro",
      price: 999,
      description: "Apple iphon 12th generation",
      color: "#3305a",
      image:
          "https://images.unsplash.com/photo-1607936854279-55e8a4c64888?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464",
    ),
  ];
}

class Item {
  final int? id;
  final String? name;
  final String? description; //why '?' i dont khow
  final num? price;
  final String? color;
  final String? image;

  Item({
    this.id,
    this.name,
    this.description,
    this.price,
    this.color,
    this.image,
  });

  Item copyWith({
    int? id,
    String? name,
    String? description,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      price: map['price'] != null ? map['price'] as num : null,
      color: map['color'] != null ? map['color'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
