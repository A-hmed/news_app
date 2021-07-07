import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({this.imagePath,this.text,this.backGroundColor,this.rightSided}) ;
  String imagePath,text;
  Color backGroundColor;
  bool rightSided;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.32,
      width: MediaQuery.of(context).size.width*0.45,
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
        bottomRight: rightSided?Radius.circular(30):Radius.circular(0),
            bottomLeft:rightSided?Radius.circular(0):Radius.circular(30),
        )
      ),
      child: Column(
        children: [
          Image.asset('$imagePath'),
          Text('$text',style: TextStyle(fontSize: 22,),)

        ],
      ),
    );
  }
}
