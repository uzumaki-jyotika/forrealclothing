import 'package:flutter/material.dart';
import 'package:forrealclothing/details_product/product_flip_details.dart';
import 'package:forrealclothing/models/product_models.dart';
import 'package:forrealclothing/widgets/category_slider.dart';
import 'package:forrealclothing/widgets/product_slider.dart';

import '../constants.dart';

class ProductDetails extends StatelessWidget {
  // final Product product;

  const ProductDetails({Key? key,
    // required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductFlipDetails())),
            child: Hero(
              tag: 'hero-rectangle',
              child: ProductSlider(
                items: slider,
              ),
            ),
          ),
      ]),
    )
    );
  }
}
