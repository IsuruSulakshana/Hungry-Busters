import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imageUrl;

  const CardWidget({Key? key, required this.imageUrl,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 300,
          height: 200,
          margin: const EdgeInsets.only(right: 40.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
    );
  }
}
