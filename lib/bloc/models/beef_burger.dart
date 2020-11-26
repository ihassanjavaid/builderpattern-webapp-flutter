import 'burger_abstract_model.dart';

class BeefBurger extends Burger {

  @override
  double price() {
    return 999.0;
  }

  @override
  String name() {
    return "Beef Burger";
  }
}