import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final String foodName;
  final String imageUrl;
  final double price;
  final String foodType;
  const Menu({
    Key? key,
    required this.foodName,
    required this.imageUrl,
    required this.price,
    required this.foodType,
  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight*screenWidth)/20000;

    return Scaffold(
      body: Container(
        height: screenHeight,
        child: Stack(
          children: [
            Container(
              height: screenHeight*0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(widget.imageUrl),
                  fit: BoxFit.cover,
                ),
               ),
              child: GestureDetector(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: screenHeight*0.6,
                width: screenWidth,
                decoration: const BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), 
                    topRight: Radius.circular(30),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
