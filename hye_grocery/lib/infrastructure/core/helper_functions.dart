import 'package:hye_grocery/domain/cart/cart.dart';
import 'package:hye_grocery/domain/cart/i_cart_facade.dart';
import 'package:hye_grocery/injection.dart';

Stream<Cart> get cart => getIt<ICartFacade>()
    .getCartItems()
    .map((either) => either.fold((l) => Cart.empty(), (cart) => cart));
