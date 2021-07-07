import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news_app/main.dart';

class NewsItem extends StatelessWidget {
   NewsItem(this.newsItem) ;
    NewsModel newsItem;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Image.asset(newsItem.imageUrl,),
        Container(
          margin: EdgeInsets.only(left: 22),
          width: double.infinity,
            child: Text(newsItem.newsSource,style: TextStyle(color: MyThemeData.labelColor,fontSize: 10),textAlign: TextAlign.start,)),
        Text(newsItem.newsContent,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),

          Container(
            margin: EdgeInsets.only(right: 22),
            width: double.infinity,
              child: Text(newsItem.newsDate,style: TextStyle(color: MyThemeData.labelColor,fontSize: 13),textAlign: TextAlign.end,))

      ],
    );
  }
}
class NewsModel{
  String imageUrl,newsSource,newsContent,newsDate;
  NewsModel({this.imageUrl,this.newsContent,this.newsDate,this.newsSource});
}
