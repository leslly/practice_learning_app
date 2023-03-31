import 'package:practice_learning_app/model/shop.dart';

class ListOfItemsProvider {
  Future<ListOfItems> getShopItems () async{
    List<ShopItem> shopitems = [
      ShopItem(
          image: 'assets/blush_images/product.png',
          price: 24.00,
          quantity: 0,
          title: 'Temp title',
      ),
      ShopItem(
        image: 'assets/blush_images/product.png',
        price: 24.00,
        quantity: 0,
        title: 'Temp title',
      ),
      ShopItem(
        image: 'assets/blush_images/product.png',
        price: 24.00,
        quantity: 0,
        title: 'Temp title',
      ),
      ShopItem(
        image: 'assets/blush_images/product.png',
        price: 24.00,
        quantity: 0,
        title: 'Temp title',
      ),
      ShopItem(
        image: 'assets/blush_images/product.png',
        price: 24.00,
        quantity: 0,
        title: 'Temp title',
      ),
    ];
    return ListOfItems(shopitems: shopitems);
  }
}

Future<ListOfItems> getCartItems () async{
  List<ShopItem> shopitems = [
    ShopItem(
      image: 'assets/blush_images/product.png',
      price: 24.00,
      quantity: 0,
      title: 'Temp title',
    ),
    ShopItem(
      image: 'assets/blush_images/product.png',
      price: 24.00,
      quantity: 0,
      title: 'Temp title',
    ),
    ShopItem(
      image: 'assets/blush_images/product.png',
      price: 24.00,
      quantity: 0,
      title: 'Temp title',
    ),
    ShopItem(
      image: 'assets/blush_images/product.png',
      price: 24.00,
      quantity: 0,
      title: 'Temp title',
    ),
    ShopItem(
      image: 'assets/blush_images/product.png',
      price: 24.00,
      quantity: 0,
      title: 'Temp title',
    ),
  ];
  return ListOfItems(shopitems: shopitems);
}