import 'package:flutter/material.dart';
import 'package:news_app/ui/home/HomeScreen.dart';

void main() {
  runApp(MyApp());
}
class MyThemeData{
  static var primaryColor=Color.fromRGBO(57, 165, 82, 1);
  static var accentColor=Colors.white;
  static var red=Color(0XFFC91C22);
  static var blue=Color(0XFF003E90);
  static var pink=Color(0XFFED1E79);
  static var orange=Color(0XFFCF7E48);
  static var lightBlue=Color(0XFF4882CF);
  static var yellow=Color(0XFFF2D352);
  static var labelColor=Color(0XFF79828B);


}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:MyThemeData.primaryColor,
        accentColor: MyThemeData.accentColor
      ),
      routes: {
        HomeScreen.ROUTE_NAME:(buildContext)=>HomeScreen()
      },
      initialRoute: HomeScreen.ROUTE_NAME,
    );

  }
}
