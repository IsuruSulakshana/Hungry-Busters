import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  final String foodName;
  final String imageUrl;
  final double price;
  final String foodType;

  const FoodCard({
    Key? key,
    required this.foodName,
    required this.imageUrl,
    required this.price,
    required this.foodType,
  }) : super(key: key);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300.0,
        height: 100.0,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
        BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 1,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
),

    );
  }
}
