import 'package:restaurant_builder_pattern/bloc/models/colddrink_abstract_model.dart';

class Coke extends ColdDrink {

  @override
  double price() {
    return 99.0;
  }

  @override
  String name() {
    return "Coke";
  }
}