import 'package:restaurant_builder_pattern/bloc/models/colddrink_abstract_model.dart';

class Pepsi extends ColdDrink {

  @override
  double price() {
    return 149.0;
  }

  @override
  String name() {
    return "Pepsi";
  }
}