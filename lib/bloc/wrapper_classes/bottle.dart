import 'package:restaurant_builder_pattern/bloc/inerfaces/packing_interface.dart';

class Bottle implements Packing {

  @override
  String pack() {
    return 'Bottle';
  }
}