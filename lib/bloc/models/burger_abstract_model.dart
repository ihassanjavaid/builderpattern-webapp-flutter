import 'package:restaurant_builder_pattern/bloc/inerfaces/item_interface.dart';
import 'package:restaurant_builder_pattern/bloc/inerfaces/packing_interface.dart';
import 'package:restaurant_builder_pattern/bloc/wrapper_classes/wrapper.dart';

abstract class Burger implements Item {

  @override
  Packing packing() {
    return Wrapper();
  }

  @override
  double price();
}