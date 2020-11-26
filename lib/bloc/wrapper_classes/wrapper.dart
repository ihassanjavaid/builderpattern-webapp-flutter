import 'package:restaurant_builder_pattern/bloc/inerfaces/packing_interface.dart';

class Wrapper implements Packing {

  @override
  String pack() {
    return 'Wrapper';
  }
}