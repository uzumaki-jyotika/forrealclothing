import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:forrealclothing/constants.dart';

class AccountPage extends StatefulWidget {

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(

      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
          child: Row(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage('https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'),
                        fit: BoxFit.cover)
                    ),
                  ),
              SizedBox(width: 20,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Jyotika',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w300,color: Colors.brown
                    )),
                    Text('Member since 2021',style: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w300, color: Colors.brown.withOpacity(0.7),
                    )),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(color: Colors.brown,borderRadius: BorderRadius.circular(3)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Edit Account',
                          style: TextStyle(fontSize: 13, color: Colors.brown[100]),
                        ),
                       ),
                    ),
                    )
                  ],
                 ),
             ],
          ),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left:20,right:20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(FontAwesomeIcons.box,
                  color: Colors.brown
                    ,),
                  SizedBox(width: 10,),
                  Text('My Orders',style: TextStyle(fontSize: 15,color: Colors.brown),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.mapMarkerAlt,
                    color: Colors.brown
                    ,),
                  SizedBox(width: 10,),
                  Text('My Address',style: TextStyle(fontSize: 15,color: Colors.brown),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.cog,
                    color: Colors.brown
                    ,),
                  SizedBox(width: 10,),
                  Text('Settings',style: TextStyle(fontSize: 15,color: Colors.brown),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Divider(thickness: 1,color: Colors.brown),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column (
            children: List.generate(accountList.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(accountList[index],style: TextStyle(fontSize: 16,color: Colors.brown
                        ),),
                      Icon(
                        Icons.arrow_forward_ios,color: Colors.brown,size: 17,
                      ),
                     ],
                    ),
                   SizedBox(height: 10,),
                   Divider(thickness: 1,color: Colors.brown.withOpacity(0.2)),
                 ],
                ),
              );
             }
            )
          ),
        )
      ],
    );
  }
}
