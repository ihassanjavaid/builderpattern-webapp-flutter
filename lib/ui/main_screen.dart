import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_builder_pattern/app.dart';
import 'package:restaurant_builder_pattern/bloc/builder/meal_builder.dart';
import 'package:restaurant_builder_pattern/bloc/inerfaces/item_interface.dart';
import 'package:restaurant_builder_pattern/bloc/meal/meal.dart';
import 'package:restaurant_builder_pattern/observers/ui_provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selected = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(color: Color(0xffe8e8e8)),
          child: Stack(
            children: [
              Positioned(
                //alignment: Alignment.bottomRight,
                right: 40,
                bottom: size.height / 2,
                child: Container(
                  child: Image.asset('assets/images/bg.png'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 36.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 50),
                                Icon(
                                  Icons.fastfood_rounded,
                                  size: 50,
                                  color: Colors.brown,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(24.0),
                                elevation: 2.5,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      children: [
                                        Text('Home',
                                            style: kTopBarTextStyle.copyWith(
                                                color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: Container(
                                            height: 40,
                                            width: 3,
                                            color: Colors.brown,
                                          ),
                                        ),
                                        Text('Blog',
                                            style: kTopBarTextStyle.copyWith(
                                                color: Colors.brown)),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: Container(
                                            height: 40,
                                            width: 3,
                                            color: Colors.brown,
                                          ),
                                        ),
                                        Text('Contact Us',
                                            style: kTopBarTextStyle.copyWith(
                                                color: Colors.brown)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 50,
                                //height: 200,
                              ),
                              Text(
                                'The\nBurger Mania',
                                style: kTopBarTextStyle.copyWith(fontSize: 74),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 50),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 28.0),
                              child: Text(
                                  'Please click on one of the buttons below to place a burger order. Thank you!',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.brown,
                                      fontStyle: FontStyle.italic)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 50),
                            GestureDetector(
                              onTap: () {
                                _selected = 1;
                                Provider.of<ButtonState>(context, listen: false)
                                    .selectButton(1);
                              },
                              child: buildBurgerCard(context,
                                  button: 1,
                                  title: 'Vegetable Burger',
                                  image: 'assets/images/veg.png'),
                            ),
                            SizedBox(width: 50),
                            GestureDetector(
                              onTap: () {
                                _selected = 2;
                                Provider.of<ButtonState>(context, listen: false)
                                    .selectButton(2);
                              },
                              child: buildBurgerCard(context,
                                  button: 2,
                                  title: 'Chicken Burger',
                                  image: 'assets/images/chicken.png'),
                            ),
                            SizedBox(width: 50),
                            GestureDetector(
                              onTap: () {
                                _selected = 3;
                                Provider.of<ButtonState>(context, listen: false)
                                    .selectButton(3);
                              },
                              child: buildBurgerCard(context,
                                  button: 3,
                                  title: 'Mutton Burger',
                                  image: 'assets/images/mutton.png'),
                            ),
                            SizedBox(width: 50),
                            GestureDetector(
                              onTap: () {
                                _selected = 4;
                                Provider.of<ButtonState>(context, listen: false)
                                    .selectButton(4);
                              },
                              child: buildBurgerCard(context,
                                  button: 4,
                                  title: 'Beef Burger',
                                  image: 'assets/images/beef.png'),
                            ),
                            SizedBox(width: 50),
                            GestureDetector(
                              onTap: () {
                                placeOrder(context, _selected);
                              },
                              child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                  height: 100,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: kDarkGreyColor,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 19.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Order\nNow!',
                                          style: kTopBarTextStyle.copyWith(
                                              color: Colors.white),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }

  Widget buildBurgerCard(BuildContext context,
      {String title, String image, String color, int button}) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: _getButtonColor(context, button),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset(image),
              ),
              Text(
                title,
                style: kTopBarTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Color _getButtonColor(BuildContext context, int button) {
  switch (button) {
    case 1:
      return Provider.of<ButtonState>(context).buttonOneColor;
    case 2:
      return Provider.of<ButtonState>(context).buttonTwoColor;
    case 3:
      return Provider.of<ButtonState>(context).buttonThreeColor;
    case 4:
      return Provider.of<ButtonState>(context).buttonFourColor;
    default:
      return Colors.white;
  }
}

void placeOrder(BuildContext context, int selected) {
  // Meal Builder
  MealBuilder _mealBuilder = MealBuilder();

  switch (selected) {

    // Vegetable Burger
    case 1:
      Meal vegMeal = _mealBuilder.prepareVegMeal();
      print("Vegetable Meal");
      vegMeal.showItems();
      print("Total Cost: " + vegMeal.getCost().toString());
      showAlert(context, meal: vegMeal);
      break;

    // Chicken Burger
    case 2:
      Meal chickenMeal = _mealBuilder.prepareChickenMeal();
      print("Chicken Meal");
      chickenMeal.showItems();
      print("Total Cost: " + chickenMeal.getCost().toString());
      showAlert(context, meal: chickenMeal);
      break;

    // Mutton Burger
    case 3:
      Meal muttonMeal = _mealBuilder.prepareMuttonMeal();
      print("Mutton Meal");
      muttonMeal.showItems();
      print("Total Cost: " + muttonMeal.getCost().toString());
      showAlert(context, meal: muttonMeal);
      break;

    // Beef Meal
    case 4:
      Meal beefMeal = _mealBuilder.prepareBeefMeal();
      print("Beef Meal");
      beefMeal.showItems();
      print("Total Cost: " + beefMeal.getCost().toString());
      showAlert(context, meal: beefMeal);
      break;

    default:
      print('Invalid Meal!');
      break;
  }
}

void showAlert(BuildContext context, {Meal meal}){

  String _itemsString = '';

  int _i = 1;
  for (Item item in meal.getItems()) {
    _itemsString = _itemsString + '$_i.\nItem: ${item.name()}';
    _itemsString = _itemsString + '\nPacking: ${item.packing().pack()} ';
    _itemsString = _itemsString + '\nPrice: Rs.${item.price()} ';
    _itemsString = _itemsString + '\n\n';
    _i++;
  }

  _itemsString  = _itemsString + 'Total Bill: Rs.${meal.getCost()}';

  Alert(
    context: context,
    type: AlertType.success,
    title: 'Receipt # ${Random().nextInt(999)}',
    desc: _itemsString,
    buttons: [
      DialogButton(
        child: Text(
          'Cancel!',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.red
      ),
      DialogButton(
          child: Text(
            'Pay Rs.${meal.getCost()}',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: kDarkGreyColor
      ),
    ],
  ).show();
}
