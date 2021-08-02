import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: getBody(),
    );
  }
  Widget getBody(){
    var primary;
    return SafeArea(child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('you are beautiful', style: TextStyle(
                fontSize: 16
              ),),
              SizedBox(width: 10,),
              Icon(FontAwesomeIcons.mapMarkedAlt, size: 20,color: Colors.brown,)
            ],
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Text('Find fucking Everything',style: TextStyle(
            fontSize: 30, height: 1.5, fontWeight: FontWeight.w400,color: Colors.brown),
          ),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(
            children: [
              Flexible(child: Container(
                height: 40,
                decoration: BoxDecoration(color: Colors.brown.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    cursorColor: primary,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Feather.search,
                        size: 20,
                      ),
                      hintText: 'we are awesome'),
                  ),
                ),
              ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 45,
                width: 45,
                decoration:
                  BoxDecoration(color: Colors.brown,shape: BoxShape.circle),
                child: Center(
                  child: Icon(FontAwesomeIcons.mapMarkerAlt,color: Colors.brown[100],),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 40,),
        Divider(
          color: Colors.brown[600],
        ),
        SizedBox(height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Text('Our Crazy Stores',style: TextStyle(
            fontSize: 22,color: Colors.brown
          ),),
        ),
        SizedBox(height: 20,
        ),
        Column(
           children: List.generate(stores.length,(index) {
         return Padding(
           padding: const EdgeInsets.only(left: 20,right: 20, bottom: 20),
           child: Container(
           height: 200,
           width: double.infinity,
           child: Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
              decoration: BoxDecoration(
                   image: DecorationImage(
                       image: NetworkImage( stores[index]),
                       fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
                 ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(.35),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 75,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.brown[100],
                            borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Close",style: TextStyle(
                                fontSize: 10, color: Colors.brown,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              Container(
                                width: 8, height: 8,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.mapMarkerAlt,
                            size: 20,color: Colors.brown[100],),
                          SizedBox(width: 10,),
                          Text(
                              storeName[index],
                              style: TextStyle(fontSize: 18, color: Colors.brown[100]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
             ],
            ),
           ),
         );
        }))
       ],
      ),
    );
  }
}
