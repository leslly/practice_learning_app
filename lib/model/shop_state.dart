
import 'package:practice_learning_app/model/shop.dart';

abstract class ShopState extends Equatable {
  const ShopState();

  @override
  List<Object> get props => [];
}

  class ShopInitial extends ShopState {

  }

  class ShopPageLoadedState extends ShopState {
    ListOfItems listofitems;
    ListOfItems cartlist;

    ShopPageLoadedState({required this.cartlist, required this.listofitems});
  }

class ItemAddingCartState extends ShopState {
  ListOfItems cartlist;
  List<ShopItem> cartitems;

  ItemAddingCartState({required this.cartlist, required this.cartitems});
}

class ItemAddedCart extends ShopState {
  List<ShopItem> cartitems;

  ItemAddedCart({required this.cartitems});
}

class ItemDeleteCartState extends ShopState {
  List<ShopItem> cartitems;

  ItemDeleteCartState({required this.cartitems});
}