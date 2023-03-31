import 'package:practice_learning_app/model/shop.dart';

abstract class ShopEvent extends Equatable {
  const ShopEvent();

        @override
      List<Object> get props => [];
      }

      class ShopInitializesEvent extends ShopEvent {

      }

      class ItemAddingCartEvent extends ShopEvent {
      List<ShopItem> cartitems;

      ItemAddingCartEvent({required this.cartitems});
      }

      class ItemAddedCartEvent extends ShopEvent {
        List<ShopItem> cartitems;

        ItemAddedCartEvent({required this.cartitems});
      }

      class ItemDeleteCartEvent extends ShopEvent {
        List<ShopItem> cartitems;
        int index;
        ItemDeleteCartEvent({required this.cartitems, required this.index});
      }