// interfaces are abstract classes in dart

import 'package:restaurant_builder_pattern/bloc/inerfaces/packing_interface.dart';

abstract class Item {
  String name();
  Packing packing();
  double price();
}