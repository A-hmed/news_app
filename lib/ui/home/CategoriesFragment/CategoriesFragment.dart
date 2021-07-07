import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import 'package:news_app/ui/home/CategoriesFragment/CategoryItem.dart';

class CategoriesFragment extends StatelessWidget {
  const CategoriesFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListView(

        children: [
          Container(
           margin: EdgeInsets.all(18),
            child: Text('Pick your category of interset',style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold ),),
          ),
          Row(children: [
            Spacer(),
            CategoryItem(imagePath: 'assets/ball.png',backGroundColor: MyThemeData.red,rightSided: false,text: 'Sports',),
            CategoryItem(imagePath: 'assets/Politics.png',backGroundColor: MyThemeData.blue,rightSided: true,text: 'Politics',),
            Spacer()
          ],),
          Row(children: [
            Spacer(),
            CategoryItem(imagePath: 'assets/health.png',backGroundColor: MyThemeData.pink,rightSided: false,text: 'Health',),
            CategoryItem(imagePath: 'assets/bussines.png',backGroundColor: MyThemeData.orange,rightSided: true,text: 'Bussines',),
            Spacer(),
          ],),
          Row(children: [
            Spacer(),
            CategoryItem(imagePath: 'assets/environment.png',backGroundColor: MyThemeData.lightBlue,rightSided: false,text: 'Enviroment',),
            CategoryItem(imagePath: 'assets/science.png',backGroundColor: MyThemeData.yellow,rightSided: true,text: 'science',),
            Spacer(),
          ],)
        ],
      ),
    );
  }
}
