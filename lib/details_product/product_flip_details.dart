import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forrealclothing/widgets/category_slider.dart';
import 'package:forrealclothing/widgets/product_slider.dart';

import '../constants.dart';
import 'details_product.dart';

class ProductFlipDetails extends StatelessWidget {
  const ProductFlipDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
            child: FlipCard(
              front:ProductSlider(
                    items: slider,
                ),
                back: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Floral print Empire Lehenga',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          '\FRC20000',style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 40,),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Size: S',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.white,
                                  child: Text('S',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14
                                   ),
                                ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.white,
                                    child: Text('M',style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14
                                    ),
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.white,
                                  child: Text('L',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14
                                  ),
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Text(
                              'Delivery by: ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                            Text(
                              '\22-08-22 ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              color: Colors.white,
                              height: 50,
                              width: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add to Bag ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14
                                    ),
                                  ),
                                  Icon(Icons.shopping_basket_outlined)
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              height: 50,
                              width: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Wishlist ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14
                                    ),
                                  ),
                                  Icon(Icons.favorite_border_outlined)
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

            ),
          )

        )
      ),
    );
  }
}
