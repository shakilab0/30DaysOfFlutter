class CatalogModel {
  static final item = [
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
}
