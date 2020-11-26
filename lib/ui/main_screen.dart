import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_builder_pattern/app.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 50),
                            buildBurgerCard(
                                title: 'Vegetable Burger',
                                image: 'assets/images/veg.png'),
                            SizedBox(width: 50),
                            buildBurgerCard(
                                title: 'Chicken Burger',
                                image: 'assets/images/chicken.png'),
                            SizedBox(width: 50),
                            buildBurgerCard(
                                title: 'Mutton Burger',
                                image: 'assets/images/mutton.png'),
                            SizedBox(width: 50),
                            buildBurgerCard(
                                title: 'Beef Burger',
                                image: 'assets/images/beef.png')
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

  Widget buildBurgerCard({String title, String image, String color}) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
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
