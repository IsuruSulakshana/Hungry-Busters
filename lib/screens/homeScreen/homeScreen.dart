import 'package:flutter/material.dart';
import 'package:hungry_busters/data/food.dart';
import 'package:hungry_busters/screens/homeScreen/components/customAppBar.dart';
import 'package:hungry_busters/screens/homeScreen/components/customSearchBar.dart';
import 'package:hungry_busters/screens/homeScreen/components/horizontalCardList.dart';
import 'package:hungry_busters/screens/homeScreen/components/menuItems.dart';
import 'package:hungry_busters/screens/homeScreen/components/verticalFoodCardList.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30.0,),
          CustomAppBar(),
          SizedBox(height: 10.0,),
          CustomSearch(),
          SizedBox(height: 20.0,),
          HorizontalCardList(),
          SizedBox(height: 20.0,),
          MenuItems(),
          FoodListView(foods: foods),
        ],
      ),
    );
  }
}