import 'package:restaurant_builder_pattern/bloc/models/burger_abstract_model.dart';

class VegBurger extends Burger {

  @override
  double price() {
    return 499.0;
  }

  @override
  String name() {
    return "Vegetable Burger";
  }
}