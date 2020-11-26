import 'package:restaurant_builder_pattern/bloc/meal/meal.dart';
import 'package:restaurant_builder_pattern/bloc/models/beef_burger.dart';
import 'package:restaurant_builder_pattern/bloc/models/chicken_burger.dart';
import 'package:restaurant_builder_pattern/bloc/models/coke_colddrink.dart';
import 'package:restaurant_builder_pattern/bloc/models/mutton_burger.dart';
import 'package:restaurant_builder_pattern/bloc/models/pepsi_colddrink.dart';
import 'package:restaurant_builder_pattern/bloc/models/veg_burger.dart';

class MealBuilder {

  Meal prepareVegMeal (){
    Meal meal = Meal();
    meal.addItem(VegBurger());
    meal.addItem(Coke());
    return meal;
  }

  Meal prepareChickenMeal (){
    Meal meal = Meal();
    meal.addItem(ChickenBurger());
    meal.addItem(Pepsi());
    return meal;
  }

  Meal prepareMuttonMeal (){
    Meal meal = Meal();
    meal.addItem(MuttonBurger());
    meal.addItem(Pepsi());
    return meal;
  }

  Meal prepareBeefMeal (){
    Meal meal = Meal();
    meal.addItem(BeefBurger());
    meal.addItem(Pepsi());
    return meal;
  }
}