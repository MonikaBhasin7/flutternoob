import 'package:flutter/foundation.dart';

class CartNotifier with ChangeNotifier {
    int? cart_count;

    int? get getCartCount {
      return cart_count;
    }

    set cartCount(int count) {
      cart_count = count;
    }

    void incrementCartCount() {
      if(cart_count == null) {
        cart_count = 1;
      } else {
        cart_count = (cart_count! + 1);
      }
      notifyListeners();
    }
}