import 'package:flutter/material.dart';
import 'package:hungry_busters/screens/homeScreen/components/customAppBar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(height: 40.0,),
          CustomAppBar(),
        ],
      ),
    );
  }
}