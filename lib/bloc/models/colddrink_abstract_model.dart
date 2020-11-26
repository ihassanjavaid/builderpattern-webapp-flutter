import 'package:restaurant_builder_pattern/bloc/inerfaces/item_interface.dart';
import 'package:restaurant_builder_pattern/bloc/inerfaces/packing_interface.dart';
import 'package:restaurant_builder_pattern/bloc/wrapper_classes/bottle.dart';

abstract class ColdDrink implements Item {

  @override
  Packing packing() {
    return Bottle();
  }

  @override
  double price();
}