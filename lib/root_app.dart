import 'package:flutter/material.dart';
import 'package:forrealclothing/constants.dart';
import 'package:forrealclothing/pages/home_pages.dart';
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
      backgroundColor: Colors.white,
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePages(),
        Center(
          child: Text("Home",
            style: TextStyle(
                fontSize: 20,
                fontWeight:
                FontWeight.bold),
          ),
        ),
        Center(
          child: Text("Account",
            style: TextStyle(
                fontSize: 20,
                fontWeight:
                FontWeight.bold),
          ),
        ),
        Center(
          child: Text("Cart",
            style: TextStyle(
                fontSize: 20,
                fontWeight:
                FontWeight.bold),
          ),
        ),
        Center(
          child: Text("More",
            style: TextStyle(
                fontSize: 20,
                fontWeight:
                FontWeight.bold),
          ),
        ),
      ],
    );
  }

  PreferredSizeWidget getAppBar() {
    switch (activeTab) {
      case 0:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: Text(
            "Forreal Home",
            style: TextStyle(color: Colors.brown),
          ),
        );
      case 1:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: Text(
            "Search",
            style: TextStyle(color: Colors.brown),
          ),
        );
      case 2:
        return AppBar(
          elevation: 0.8,
            backgroundColor: Colors.white,
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.brown),
          ),
        );
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: Text(
            "Forreal",
            style: TextStyle(color: Colors.brown),
          ),
        );
      case 4:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: Text(
            "Forreal Logo",
            style: TextStyle(color: Colors.brown),
          ),
        );
      default: return AppBar(
        elevation: 0.8,
        backgroundColor: Colors.white,
        title: Text(
          "Forreal Logo",
          style: TextStyle(color: Colors.brown),
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
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
        child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: List.generate(itemsTab.length, (index) {
           return IconButton(
              icon: Icon(
                itemsTab[index]['icon'],
                size: itemsTab[index]['size'],
                color: activeTab == index ? Colors.brown: Colors.black,
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

