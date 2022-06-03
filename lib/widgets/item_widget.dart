import 'package:flutter/material.dart';
import 'package:m_app1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item? item; //

  const ItemWidget({Key? key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item!.name} pressed");
        },
        leading: Image.network("${item!.image}"),
        subtitle: Text("${item!.description}"),
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
