import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:forrealclothing/constants.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(children: [
      Column(
          children: List.generate(cartList.length, (index) {
        return Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(cartList[index]['img']),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartList[index]['name'],
                            style: TextStyle(fontSize: 20, color: Colors.brown),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'ref  ' + cartList[index]['ref'],
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.brown.withOpacity(0.5)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            cartList[index]['size'],
                            style: TextStyle(fontSize: 23, color: Colors.brown),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                cartList[index]['price'],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.brown,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Row(children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.brown.withOpacity(0.5)),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      FontAwesome.minus,
                                      color: Colors.brown.withOpacity(0.5),
                                      size: 10,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.brown),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.brown.withOpacity(0.5)),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      FontAwesome.plus,
                                      color: Colors.brown.withOpacity(0.5),
                                      size: 10,
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ])
                  ],
                )),
            SizedBox(
              height: 20,),
          ],
        );
      })),
      SizedBox(height: 20,),
      Divider(color: Colors.brown.withOpacity(0.5),),
      SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Text('Do you have a promo code?',style: TextStyle(fontSize: 16,color: Colors.brown),
        ),
      ),
      SizedBox(height: 15,),
      Divider(
        color: Colors.brown.withOpacity(0.5),
      ),
      SizedBox(height: 15,),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Delivery',style: TextStyle(fontSize: 16,color: Colors.brown),
            ),
            Text('Standard - Free',style: TextStyle(fontSize: 16,color: Colors.brown),
            ),
          ],
        ),
      ),
      SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.brown,borderRadius: BorderRadius.circular(25)
          ),
          child: Center(
            child: Text(
              'Buy for \Rs.5000'.toUpperCase(),
              style: TextStyle(color: Colors.brown[100],fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),

    ]);
  }
}
