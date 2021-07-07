import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import 'package:news_app/ui/home/CategoriesFragment/CategoriesFragment.dart';
import 'package:news_app/ui/home/NewsFragment/NewsFragment.dart';
import 'package:news_app/ui/home/Widgets/Drawer.dart';

class HomeScreen extends StatelessWidget {
  static String ROUTE_NAME = 'home';

  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerWidget(),
      appBar: AppBar(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(80),bottomLeft: Radius.circular(80))
        ),
        title:Row(
          children: [
            Spacer(),
            Text('News App'),
            Spacer(),
            Icon(Icons.search)
          ],
        ),
      ),
      body: CategoriesFragment(),
    );
  }
}
