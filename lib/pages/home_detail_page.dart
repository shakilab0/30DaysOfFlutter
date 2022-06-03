import 'package:flutter/material.dart';
import 'package:m_app1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item? catalog;

  const HomeDetailPage({Key? key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog!.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            // ignore: deprecated_member_use
                            context.theme.buttonColor),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "Add to Cart".text.xl.make())
                .wh(150, 60),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog!.id.toString()),
                    child: Image.network("${catalog!.image}"))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    "${catalog!.name}"
                        .text
                        .xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    "${catalog!.description}"
                        .text
                        .textStyle(context.captionStyle!)
                        .xl
                        .make(),
                    10.heightBox,
                    "This may sound like an obvious one, but you should be able to find some mention of the phone or its model number on the phone, or among the things you found in the box. The box itself is also a great indicator,"
                        .text
                        .textStyle(context.captionStyle!)
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
