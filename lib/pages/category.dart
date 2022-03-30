import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forrealclothing/models/product_models.dart';
import 'package:forrealclothing/widgets/category_slider.dart';
import 'package:forrealclothing/widgets/custom_slider.dart';

import '../constants.dart';
import 'gridview.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  List< String> listPosts = [
    'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
    'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
    'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
    'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
    'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
    'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: getBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text('Forreal Clothing'),
      actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_basket_sharp,
            color: Colors.white,
          ),
          onPressed: () => print("Add"),
        ),
      ],
    );
  }

  Widget getBody() {
    var size = MediaQuery
        .of(context)
        .size;
    return ListView(
      children: [
        CategorySlider(
          items: slider,
        ),
        SizedBox(height: 5,),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index) => Stack(
            children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: CachedNetworkImageProvider((listPosts[index]))),
              ),
            ),
              Column(
                children: [
                  Text(products[index].title,
                    style: TextStyle(color: Colors.white),),

                ],
              )
            ]
          ),
          itemCount: listPosts.length,
        )
      ],
    );
  }
  }





 //  class ItemCard extends StatelessWidget{
 //    final Product product;
 //    final Function press;
 //    const ItemCard({required Key key, required this.product, required this.press,
 //  }) : super(key: key);
 //
 //
 // @override
 //  Widget build(BuildContext context){
 //    return Column(
 //          crossAxisAlignment: CrossAxisAlignment.start,
 //          children: [
 //            Container(
 //              padding: EdgeInsets.all(8),
 //              height: 180,
 //              width: 160,
 //              decoration: BoxDecoration(
 //                color: Colors.grey[900],
 //                borderRadius: BorderRadius.circular(16),
 //              ),
 //              child: Image.asset(products[0].image),
 //            ),
 //            Padding(
 //              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin ),
 //              child: Text(products[0].title,
 //                style: TextStyle(color: Colors.white),
 //              ),
 //            ),
 //            Text("\20000FRC",
 //              style: TextStyle(color: Colors.white),
 //            ),
 //          ],
 //        );
 //    }
 //  }

