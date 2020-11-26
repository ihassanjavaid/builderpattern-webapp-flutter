import 'burger_abstract_model.dart';

class MuttonBurger extends Burger {

  @override
  double price() {
    return 1299.0;
  }

  @override
  String name() {
    return "Mutton Burger";
  }
}