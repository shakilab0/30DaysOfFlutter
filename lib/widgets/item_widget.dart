import 'package:flutter/material.dart';
import 'package:m_app1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item? item; //  '!' why

  const ItemWidget({Key? key, @required this.item})
      : assert(item != null),
        //  '!' why
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item!.name} pressed"); // '!'  why
        },
        leading: Image.network("${item!.image}"),
        // (item.image) ay rokom deta parbo na kano
        subtitle: Text("${item!.description}"),
        // (item.image) ay rokom deta parbo na kano
        trailing: Text(
          "\$${item!.price}",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
