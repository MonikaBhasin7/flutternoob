import 'package:flutter/cupertino.dart';

class FoodTabNotifier with ChangeNotifier {
  String? food_type;

  String? get getFoodType {
    return food_type;
  }

  void setFoodType(String foodType) {
    food_type = foodType;
    notifyListeners();
  }
}