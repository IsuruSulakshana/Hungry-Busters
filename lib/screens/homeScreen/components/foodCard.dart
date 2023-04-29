import 'package:flutter/material.dart';
import 'package:hungry_busters/screens/menuScreen/menuScreen.dart';
import 'package:hungry_busters/themes/textStyle.dart';

class FoodCard extends StatefulWidget {
  final String foodName;
  final String imageUrl;
  final double price;
  final String foodType;

  const FoodCard({
    Key? key,
    required this.foodName,
    required this.imageUrl,
    required this.price,
    required this.foodType,
  }) : super(key: key);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300.0,
        height: 100.0,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
        BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 1,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
      ],
     ),
     child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Menu(
                foodName: widget.foodName, 
                imageUrl: widget.imageUrl, 
                foodType: widget.foodType, 
                price: widget.price,

                )),
              );
            }, child: Container(
            height: 100.0,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
                fit: BoxFit.cover,
            ),
          ),),
          ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.foodName,
                      style: commonTextStyle,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_outline,
                        size: 20.0,
                        color: isFavorite? Colors.yellow:Colors.grey,
                      ),
                      onPressed: (){
                        setState(() {
                          isFavorite != isFavorite;
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.star,size: 20.0,color: Colors.orange,),
                    Icon(Icons.star,size: 20.0,color: Colors.orange,),
                    Icon(Icons.star,size: 20.0,color: Colors.orange,),
                    Icon(Icons.star,size: 20.0,color: Colors.orange,),
                    Icon(Icons.star,size: 20.0,color: Colors.orange,),
                    Text(
                      "4.5",
                      style: commonTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.foodType,
                      style: const TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '${widget.price}LKR',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15.0
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
     ),
    ),
    );
  }
}
