import 'package:flutter/material.dart';
import 'package:news_app/main.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: MyThemeData.accentColor,
      width: MediaQuery.of(context).size.width * 0.65,
      height: double.infinity,
      child: (Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            color: MyThemeData.primaryColor,
            child: DrawerHeader(
                child: Container(
                  width: double.infinity,
                  child: Center(
                      child: Text(
                        'News App!',
                        style:
                        TextStyle(fontSize: 22, color: MyThemeData.accentColor),
                      )),
                )),
          ),
          TextButton(
              onPressed: null,
              child: Row(
                children: [
                  Icon(
                    Icons.list,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              )),
          TextButton(
              onPressed: null,
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ))
        ],
      )),
    );
  }
}
