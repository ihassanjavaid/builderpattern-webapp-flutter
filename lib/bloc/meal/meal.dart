import 'package:restaurant_builder_pattern/bloc/inerfaces/item_interface.dart';

class Meal {
  List<Item> _items = List<Item>();

  void addItem(Item item){
    _items.add(item);
  }

  double getCost(){
    double cost = 0.0;

    for (Item item in _items) {
      cost += item.price();
    }
    return cost;
  }

  void showItems(){

    for (Item item in _items) {
      print("Item : " + item.name());
      print(" Packing : " + item.packing().pack());
      print(" Price : " + item.price().toString());
    }
  }

  List<Item> getItems(){
    return _items;
  }
}