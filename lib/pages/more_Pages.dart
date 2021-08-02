import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: getBody(),
    );
  }
  Widget getBody() {
    var size = MediaQuery
        .of(context)
        .size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Row(
            children: [
              Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage(
                          'https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'),
                          fit: BoxFit.cover
                      ))
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text('Jyotika', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.brown),
                  ),
                  SizedBox(height: 10,),
                  Text('10 Orders', style: TextStyle(fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.brown),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Divider(color: Colors.brown.withOpacity(0.5),
        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(menusMore.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left:25,bottom: 40),
                child: Text(menusMore[index], style: TextStyle(
                    fontSize: 21, fontWeight: FontWeight.w500, color: Colors.brown),
                ),
              );

            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (size.width-100)/2,
                height: 50,
                decoration: BoxDecoration(color: Colors.brown[400],borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(
                    'Settings',
                    style: TextStyle(fontSize: 15,color: Colors.brown[100]),
                  ),
                ),
              ),
              Container(
                width: (size.width-100)/2,
                height: 50,
                decoration: BoxDecoration(color: Colors.brown[400],borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 15,color: Colors.brown[100]),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

}

