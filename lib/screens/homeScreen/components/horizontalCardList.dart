import 'package:flutter/material.dart';
import 'package:hungry_busters/screens/homeScreen/components/cardWidget.dart';

class HorizontalCardList extends StatefulWidget {
  const HorizontalCardList({Key? key}) : super(key: key);

  @override
  _HorizontalCardListState createState() => _HorizontalCardListState();
}

class _HorizontalCardListState extends State<HorizontalCardList> {
  // Replace this with your card model
  final List<String> _cards = [
    "asset/images/restaurantCard.png"
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png"
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
    "asset/images/restaurantCard.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10.0),
        scrollDirection: Axis.horizontal,
        
        itemCount: _cards.length,
        itemBuilder: (context, index) {
          return CardWidget(
              imageUrl: _cards[index+1],
          );
        },
      ),
    );
  }
}

