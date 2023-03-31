import 'package:bloc/bloc,dart';
import 'package:equatable/equatable.dart';
import 'package:practice_learning_app/model/shop.dart';
import 'package:practice_learning_app/model/shop_event.dart';
import 'package:practice_learning_app/model/shop_item_repo.dart';
import 'package:practice_learning_app/model/shop_state.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopDataProvider shopDataProvider = shopDataProvider();
  ShopBloc() : super(ShopInitial()) {
    add(ShopPageInitializedEvent());
  }

  @override
  Stream<ShopState> mapEventToState (
      ShopEvent event,
      ) async* {
    if (event is  ShopPageInitializedEvent) {
      ListOfItems listofitems = await shopDataProvider.getShopItems();
      ListOfItems cartitems = await shopDataProvider.getCartItems();
      yield ShopPageLoadedState(cartlist: cartlist, listofitems: listofitems);
    }
    if (event is ItemAddingCartEvent) {
      yield ItemAddingCartState( cartitems: event.cartitems, cartlist: null);//cartlist should not be here
    }
    if (event is ItemAddedCartEvent) {
      yield ItemAddedCartState(cartItems: event.cartitems);//why does addedState no exist
    }
    if (event is ItemDeleteCartEvent) {
      yield ItemDeleteCartState(cartitems: event.cartitems);
    }
  }
}