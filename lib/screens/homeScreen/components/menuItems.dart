import 'package:flutter/material.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight*screenWidth)/20000;

    return Container(
      height: 80.0,
      width: screenWidth,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Item(),Item(),Item(),Item(),Item(),Item(),Item(),Item(),Item(),Item(),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight*screenWidth)/20000;

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 110.0,
        width: 67.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/menuItem.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}