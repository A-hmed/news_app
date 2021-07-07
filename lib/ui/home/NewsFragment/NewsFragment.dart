import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import 'package:news_app/ui/home/NewsFragment/NewsItem.dart';

class NewsFragment extends StatefulWidget {
  const NewsFragment({Key key}) : super(key: key);

  @override
  _NewsFragmentState createState() => _NewsFragmentState();
}

class _NewsFragmentState extends State<NewsFragment>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  int selectedTabIndex = 0;
  List<NewsModel> newsList;
  // List<Widget> list;
  @override
  void initState() {
    super.initState();
    // list=
    tabController = new TabController(length: 2, vsync: this);
    newsList=[
      new NewsModel(imageUrl: 'assets/NewsTest.png',newsSource: 'BBC',newsContent: 'Why are footballs biggest clubs starting a newtournament',
      newsDate: '3 hours ago'),
      new NewsModel(imageUrl: 'assets/NewsTest.png',newsSource: 'BBC',newsContent: 'Why are footballs biggest clubs starting a newtournament',
          newsDate: '3 hours ago'),
      new NewsModel(imageUrl: 'assets/NewsTest.png',newsSource: 'BBC',newsContent: 'Why are footballs biggest clubs starting a newtournament',
          newsDate: '3 hours ago')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          onTap: (index) {
            this.setState(() {
              selectedTabIndex = index;
            });
          },
          controller: tabController,
          tabs: [
            Tab(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: MyThemeData.primaryColor, width: 3),
                    borderRadius: BorderRadius.circular(20),
                    color: selectedTabIndex == 0
                        ? MyThemeData.primaryColor
                        : MyThemeData.accentColor),
                height: double.infinity,
                child: Center(
                    child: Text(
                  'first Tab',
                  style: TextStyle(
                      color: selectedTabIndex == 0
                          ? MyThemeData.accentColor
                          : MyThemeData.primaryColor),
                )),
              ),
            ),
            Tab(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: MyThemeData.primaryColor, width: 3),
                    borderRadius: BorderRadius.circular(20),
                    color: selectedTabIndex == 1
                        ? MyThemeData.primaryColor
                        : MyThemeData.accentColor),
                child: Center(
                    child: Text('second Tab',
                        style: TextStyle(
                            color: selectedTabIndex == 1
                                ? MyThemeData.accentColor
                                : MyThemeData.primaryColor))),
              ),
            ),
          ],
        ),
        Expanded(
            child: TabBarView(
          controller: tabController,
          children: [
            Center(
              child: ListView.builder(itemBuilder: (buildContext,index){
                return NewsItem(newsList[index]);
              },
              itemCount: newsList.length,
              ),
            ),
            Center(
              child: TextButton(
                onPressed: null,
                child: Text('button in tab1'),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
