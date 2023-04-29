import 'package:flutter/material.dart';
import 'package:hungry_busters/data/suggestFood.dart';
import 'package:hungry_busters/models/suggestFoodModel.dart';
import 'package:hungry_busters/screens/menuScreen/components/suggestFoodCard.dart';

class SuggestFoodView extends StatefulWidget {
  final List<SuggestFood> suggestFood;
  const SuggestFoodView({Key? key, required this.suggestFood}) : super(key: key);

  @override
  State<SuggestFoodView> createState() => _SuggestFoodViewState();
}

class _SuggestFoodViewState extends State<SuggestFoodView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: suggestFood.length,
        itemBuilder: (BuildContext context, int index) {
          return SuggestFoodCard(
            foodName: suggestFood[index].name,
            imageUrl: suggestFood[index].imageUrl,
          );
        },
      ),
    );
  }
}