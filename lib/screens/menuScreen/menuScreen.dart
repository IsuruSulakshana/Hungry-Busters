import 'package:flutter/material.dart';
import 'package:hungry_busters/data/suggestFood.dart';
import 'package:hungry_busters/screens/menuScreen/components/suggestFoodList.dart';
import 'package:hungry_busters/themes/textStyle.dart';
import 'package:hungry_busters/widgets/colorButton/colorButton.dart';

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
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight * screenWidth) / 20000;

    return Scaffold(
      body: Container(
        height: screenHeight,
        child: Stack(
          children: [
            Container(
              height: screenHeight * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(widget.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 25.0,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: screenHeight * 0.6,
                width: screenWidth,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 84.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.foodName,
                                  style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 30.0,
                                  ),
                                ),
                                Text(
                                  widget.foodType,
                                  style: smallTextStyle,
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 20.0,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20.0,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20.0,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20.0,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20.0,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "4.5",
                                      style: commonTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 84.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  child: Icon(
                                    Icons.favorite_outline,
                                    size: 24.0,
                                    color: isFavorite
                                        ? Colors.yellow
                                        : Colors.grey,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isFavorite != isFavorite;
                                    });
                                  },
                                ),
                                Text(
                                  '${widget.price}LKR',
                                  style: const TextStyle(
                                      color: Colors.orange, fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    ColorButton(function: () {}, text: "Add to Bag"),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: widget.foodName,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text:
                                  ' is a unique blend of cheesy goodness and fluffy flaky pasta richness. Pasta Mozzarella is served with your choice of protein or vegetable and any topping of the selected classic and spicy ranges. Portion serves two.',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    SizedBox(
                      width: screenWidth,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          "You might also like",
                          style: smallTextStyle,
                        ),
                      ),
                    ),
                    SuggestFoodView(suggestFood: suggestFood),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
