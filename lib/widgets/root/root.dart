import 'package:flutter/material.dart';
import 'package:hungry_busters/screens/checkOutScreen/checkOutScreen.dart';
import 'package:hungry_busters/screens/favorite/favorite.dart';
import 'package:hungry_busters/screens/homeScreen/homeScreen.dart';
import 'package:hungry_busters/screens/nearBy/nearBy.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentIndex = 0;
  // ignore: non_constant_identifier_names
  final Screens = [
    const Home(),
    const NearBy(),
    const CheckOut(),
    const Favorite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              border: Border(
                top: BorderSide(color: Color.fromARGB(255, 214, 214, 214), width: 0.8),
              )),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            selectedItemColor: Colors.orange,
            unselectedItemColor: Color.fromARGB(255, 162, 162, 162),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 30.0,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Icon(
                      Icons.home_outlined,
                    ),
                  ),
                  label:''
                  ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Icon(
                      Icons.location_on_outlined,
                    ),
                  ),
                  label: ''
                  ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Icon(
                      Icons.card_travel,
                    ),
                  ),
                  label: ''
                  ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Icon(
                      Icons.favorite_outline_rounded,
                    ),
                  ),
                  label: '',
                  ),
               ],
            ),
        ),
    );
  }
}