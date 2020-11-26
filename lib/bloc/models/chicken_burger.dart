import 'burger_abstract_model.dart';

class ChickenBurger extends Burger {

  @override
  double price() {
    return 799.0;
  }

  @override
  String name() {
    return "Chicken Burger";
  }
}