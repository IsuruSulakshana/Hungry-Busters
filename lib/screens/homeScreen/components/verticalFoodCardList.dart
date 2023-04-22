import 'package:flutter/material.dart';
import 'package:hungry_busters/models/foodCardMoedl.dart';
import 'package:hungry_busters/screens/homeScreen/components/foodCard.dart';

class FoodListView extends StatelessWidget {
  final List<Food> foods;

  const FoodListView({Key? key, required this.foods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            foodName: foods[index].name,
            imageUrl: foods[index].imageUrl,
            price: foods[index].price,
            foodType: foods[index].type,
          );
        },
      ),
    );
  }
}
