import 'package:flutter/material.dart';
import 'package:forrealclothing/constants.dart';
import 'package:forrealclothing/pages/Cart_Page.dart';
import 'package:forrealclothing/pages/account_page.dart';
import 'package:forrealclothing/pages/home_pages.dart';
import 'package:forrealclothing/pages/more_Pages.dart';
import 'package:forrealclothing/pages/store_page.dart';
import 'constants.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  // appbar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        StorePage(),
        HomePages(),
        AccountPage(),
        CartPage(),
        MorePage(),
      ],
    );
  }

  PreferredSizeWidget getAppBar() {
    switch (activeTab) {
      case 0:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.brown[300],
          title: Text(
            "Forreal Home",
            style: TextStyle(color: Colors.brown[50]),
          ),
        );
      case 1:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.brown[300],
          title: Text(
            "Search",
            style: TextStyle(color: Colors.brown[50]),
          ),
        );
      case 2:
        return AppBar(
          elevation: 0.8,
            backgroundColor: Colors.brown[300],
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.brown[50]),
          ),
        );
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.brown[300],
          title: Text(
            "Forreal",
            style: TextStyle(color: Colors.brown[50]),
          ),
        );
      case 4:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.brown[300],
          title: Text(
            "Forreal Logo",
            style: TextStyle(color: Colors.brown[50]),
          ),
        );
      default: return AppBar(
        elevation: 0.8,
        backgroundColor: Colors.brown[300],
        title: Text(
          "Forreal Logo",
          style: TextStyle(color: Colors.brown[50]),
        ),
      );
    }
    // return AppBar(
    //   elevation: 0.8,
    //   backgroundColor: Colors.white,
    //   title: Text(
    //     "Forreal Logo",
    //     style: TextStyle(color: Colors.black),
    //   ),
    // );
  }


  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.brown[300],
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
        child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: List.generate(iconsTab.length, (index) {
           return IconButton(
              icon: Icon(
                itemsTab[index]['icon'],
                size: itemsTab[index]['size'],
                // color: Colors.brown[100],
                color: activeTab != index ? Colors.brown: Colors.brown[100],
                 ),
           onPressed:() {
                setState(() {
                  activeTab = index;
                });
           }); //IconButton
           })),
      ),
      );
  }
}

