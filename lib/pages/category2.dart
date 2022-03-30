import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forrealclothing/details_product/details_product.dart';
import 'package:forrealclothing/details_product/product_flip_details.dart';
import 'package:forrealclothing/models/product_models.dart';
import 'package:forrealclothing/widgets/category_slider.dart';
import 'package:forrealclothing/widgets/custom_slider.dart';

import '../constants.dart';
import 'gridview.dart';

class Category2 extends StatefulWidget {
  final List<String> items;
  const Category2({Key? key, required this.items}) : super(key: key);

  @override
  _Category2State createState() => _Category2State();
}

class _Category2State extends State<Category2> {

  int activeIndex = 0;
  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }


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
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductFlipDetails())),
                  child: Hero(
                    tag: 'hero-rectangle',
                    child: CategorySlider(
                      items: slider,
                    ),
                  ),
                ),

                // Container(
                //   height: 200,
                //   width: 170,
                //   child: CarouselSlider(
                //     options: CarouselOptions(
                //       onPageChanged: (index, reason) {
                //         setActiveDot(index);
                //       },
                //       autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                //       autoPlayAnimationDuration: Duration(seconds: 2),
                //       viewportFraction: 1.0,
                //     ),
                //     items: widget.items.map((item) {
                //       return Builder(
                //         builder: (BuildContext context) {
                //           return Stack(
                //             children: <Widget>[
                //               InkWell(
                //                 onTap: ()  {},
                //                 child: Container(
                //                     width: MediaQuery.of(context).size.width/2,
                //                     decoration:BoxDecoration(
                //                       borderRadius: BorderRadius.circular(10),
                //                       image: DecorationImage(
                //                         image: CachedNetworkImageProvider((listPosts[index])),
                //                         fit: BoxFit.cover,
                //                       ),
                //
                //                     )),
                //               ),
                //               Padding(
                //                 padding: const EdgeInsets.only(top: 150, left: 20),
                //                 child: Text('Peacock Collection',style: TextStyle(
                //                   fontSize: 18,
                //                   fontWeight: FontWeight.bold,
                //                   color: Colors.white,
                //                 ),),
                //               ),
                //
                //             ],
                //           );
                //         },
                //       );
                //     }).toList(),
                //   ),
                // ),

               // SizedBox(height: 5,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(products[index].title,
                            style: TextStyle(color: Colors.white),),
                          Text(products[index].title,
                            style: TextStyle(
                                color: Colors.white,
                              fontSize: 10,
                            ),),

                        ],
                      ),
                    ),
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













































// import 'package:flutter/material.dart';
//
// import 'package:flutter/material.dart';
// import 'package:forrealclothing/details_product/details_product.dart';
// import 'package:forrealclothing/models/product_models.dart';
//
//
// import '../../../constants.dart';
//
// class Category2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(),
//       body: Body(),
//     );
//   }
//
//   AppBar buildAppBar() {
//     return AppBar(
//       backgroundColor: Colors.black,
//       elevation: 0,
//
//       actions: <Widget>[
//         IconButton(
//           icon: Icon(Icons.shopping_basket_sharp, color: Colors.white,
//           ), onPressed: () {  },
//
//         ),
//
//         SizedBox(width: kDefaultPaddin / 2)
//       ],
//     );
//   }
// }
//
// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//             child: GridView.builder(
//                 itemCount: products.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: kDefaultPaddin,
//                   crossAxisSpacing: kDefaultPaddin,
//                   childAspectRatio: .75,
//                 ),
//                 itemBuilder: (context, index) => ItemCard(
//                   product: products[index],
//                   press: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ProductDetails(
//                           product: products[index],
//                         ),
//                       )), key: UniqueKey(),
//                 )),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
//
// class ItemCard extends StatelessWidget {
//   final Product product;
//   final Function press;
//   const ItemCard({
//     required Key key,
//     required this.product,
//     required this.press,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       // onTap: press,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(kDefaultPaddin),
//               // height: 180,
//               // width: 160,
//               decoration: BoxDecoration(
//                 color: product.color,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Hero(
//                 tag: "${product.id}",
//                 child: Image.asset(product.image),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
//             child: Text(
//               product.title,
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
//           Text(
//             "\$${product.price}",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           )
//         ],
//       ),
//     );
//   }
// }