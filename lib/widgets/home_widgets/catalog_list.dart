import 'package:flutter/material.dart';
import 'package:m_app1/models/catalog.dart';
import 'package:m_app1/pages/home_detail_page.dart';
import 'package:m_app1/widgets/home_widgets/catalog_image.dart';
import 'package:m_app1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () =>
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomeDetailPage(
                              catalog: catalog,
                            ))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog; //"?" why

  const CatalogItem(
      {Key? key, required this.catalog}) //"@" dela ke hoy //vedio ta  requed ar aga '@' asa
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: CatalogImage(image: catalog.image)),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "${catalog.name}"
                      .text
                      .lg
                      .color(MyTheme.darkBluishColor)
                      .bold
                      .make(),
                  "${catalog.description}"
                      .text
                      .textStyle(context.captionStyle!)
                      .make(),
                  10.heightBox,
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: EdgeInsets.zero,
                    children: [
                      "\$${catalog.price}".text.bold.xl.make(),
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  MyTheme.darkBluishColor),
                              shape: MaterialStateProperty.all(
                                StadiumBorder(),
                              )),
                          child: "Buy".text.make()),
                    ],
                  ).pOnly(right: 8.0)
                ],
              ),
            ),
          ],
        )).white.roundedLg.square(150).make().py16();
  }
}
