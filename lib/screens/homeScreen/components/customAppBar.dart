import 'package:flutter/material.dart';
import 'package:hungry_busters/themes/textStyle.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: (){}, 
                icon: const Icon(
                  Icons.menu,
                  size: 30.0,
                  color: Colors.orange,
                )
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Good afternoon Victoria!",
                    style: smallTextStyle,
                  ),
                  const SizedBox(width: 3.0,),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/images/profile.png'),
                        fit: BoxFit.cover,
                        ),
                      ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0.0,
                          left: 5.0,
                          child: Container(
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                               color: Colors.orange,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}