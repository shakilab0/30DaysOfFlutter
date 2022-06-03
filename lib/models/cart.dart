// import 'package:m_app1/models/catalog.dart';
//
// class CartModel {
//   CatalogModel _catalog = new CatalogModel();
//
//   //colection of IDs -store Ids each otem
//
//   final List<int> _itemIds = [];
//
//   //get catalog
//   CatalogModel get catalog => _catalog;
//
//   set catalog(CatalogModel newCatalog) {
//     assert(newCatalog != null);
//     _catalog = newCatalog;
//   }
//
//
//   //Get Items in the cart
//   List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toString();
//
//   //get total price
//   num get totalPrice =>
//       items.fold(0, (total, current) => total + current.price);
//
// //add Item
//   void add(Item item) {
//     _itemIds.add(item.id);
//   }
//
// //remove Item
//
//   void remove(Item item) {
//     _itemIds.remove(item.id);
//   }
// }
