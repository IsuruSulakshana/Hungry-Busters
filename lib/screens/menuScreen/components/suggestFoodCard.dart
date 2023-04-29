import 'package:flutter/material.dart';
import 'package:hungry_busters/themes/textStyle.dart';

class SuggestFoodCard extends StatefulWidget {
   final String foodName;
  final String imageUrl;

  const SuggestFoodCard({
  Key? key, 
  required this.foodName, 
  required this.imageUrl}) : super(key: key);

  @override
  State<SuggestFoodCard> createState() => _SuggestFoodCardState();
}

class _SuggestFoodCardState extends State<SuggestFoodCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 120.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(widget.imageUrl),
                        fit: BoxFit.cover,
                    ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                widget.foodName,
                style: smallTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}