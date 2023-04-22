import 'package:flutter/material.dart';
import 'package:hungry_busters/themes/textStyle.dart';

class ColorButton extends StatelessWidget {
  final Function function;
  final String text;
  const ColorButton({
    Key? key, 
    required this.function, 
    required this.text
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight*screenWidth)/20000;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
      child: Container(
        width: double.infinity,
        height: screenHeight*0.06,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: FlatButton(
          onPressed: () {
          function();
        },
          child: Text(
            text,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}