 class ListOfItems {
  List<ShopItem> shopitems ;

  ListOfItems({required this.shopitems});
 }

class ShopItem {
  String image;
  String title;
  double price;
  int quantity;

  ShopItem(

  {required this.image, required this.price, required this.quantity, required this.title}
);
}