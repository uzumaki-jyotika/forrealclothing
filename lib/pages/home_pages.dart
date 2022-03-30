import 'package:flutter/material.dart';
import 'package:forrealclothing/pages/heart.dart';
import 'package:forrealclothing/widgets/cat_slider_homepage.dart';
import 'package:forrealclothing/widgets/custom_slider.dart';
import '../constants.dart';
import 'gridview.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        CustomCarouselHomePage(
          items: slider,
        ),
        SizedBox(height: 2,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: CatSliderHomePage(items: slider,),

            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: CatSliderHomePage(items: slider,),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: CatSliderHomePage(items: slider,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: CatSliderHomePage(items: slider,),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CatSliderHomePage(items: slider,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CatSliderHomePage(items: slider,),
            ),
          ],
        ),



        // Stack(
        //   children: [
        //     Container(
        //         width: size.width,
        //         height: 500,
        //         decoration: BoxDecoration(
        //             image: DecorationImage(
        //                 image: NetworkImage(homeImg), fit: BoxFit.cover))),
        //     // Padding(
        //     //   padding: const EdgeInsets.only(top: 35, right: 10),
        //     //   child: Row(
        //     //     mainAxisAlignment: MainAxisAlignment.end,
        //     //     children: [
        //     //       Heart(),
        //     //       SizedBox(
        //     //         width: 15,
        //     //       ),
        //     //       Icon(
        //     //         Icons.search,
        //     //         color: Colors.brown,
        //     //         size: 28,
        //     //       ),
        //     //       SizedBox(
        //     //         width: 15,
        //     //       ),
        //     //     ],
        //     //   ),
        //     // ),
        //     // Positioned(
        //     //   bottom: 20,
        //     //   child: Padding(
        //     //     padding: const EdgeInsets.only(left: 20),
        //     //     child: Column(
        //     //       crossAxisAlignment: CrossAxisAlignment.start,
        //     //       children: [
        //     //         Text(
        //     //           "Winter Collection",
        //     //           style: TextStyle(
        //     //               fontSize: 25,
        //     //               color: Colors.brown,
        //     //               fontWeight: FontWeight.bold),
        //     //         ),
        //     //         SizedBox(
        //     //           height: 10,
        //     //         ),
        //     //         Row(
        //     //           children: [
        //     //             Text(
        //     //               "DISCOVER",
        //     //               style: TextStyle(
        //     //                   fontSize: 15,
        //     //                   color: Colors.brown,
        //     //                   fontWeight: FontWeight.bold),
        //     //             ),
        //     //             SizedBox(
        //     //               width: 5,
        //     //             ),
        //     //             Icon(
        //     //               Icons.arrow_forward_ios,
        //     //               color: Colors.brown,
        //     //               size: 18,
        //     //             ),
        //     //           ],
        //     //         )
        //     //       ],
        //     //     ),
        //     //   ),
        //     // )
        //   ],
        // ),
        // SizedBox(
        //   height: 40,
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 15, right: 15),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         "Categories",
        //         style: TextStyle(
        //             fontSize: 18,
        //             color: Colors.brown,
        //             fontWeight: FontWeight.bold),
        //       ),
        //       Row(
        //         children: [
        //           Text(
        //             "All",
        //             style: TextStyle(color: Colors.brown),
        //           ),
        //           SizedBox(
        //             width: 5,
        //           ),
        //           Icon(
        //             Icons.arrow_forward_ios,
        //             color: Colors.brown,
        //             size: 16,
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   height: 20,
        // ), // SizedBox
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: List.generate(categories.length, (index) {
        //       String path = category_url[index];
        //
        //       return Padding(
        //         padding: const EdgeInsets.only(left: 15),
        //         child: Container(
        //           width: 180,
        //           height: 220,
        //           child: Stack(
        //             children: [
        //               Container(
        //                 decoration: BoxDecoration(
        //                     image: DecorationImage(
        //                         image: NetworkImage(path), fit: BoxFit.cover),
        //                     borderRadius: BorderRadius.circular(5)),
        //               ),
        //               Container(
        //                 decoration: BoxDecoration(
        //                     color: Colors.black.withOpacity(0.1),
        //                     borderRadius: BorderRadius.circular(5)),
        //               ),
        //               Positioned(
        //                 bottom: 5,
        //                 child: Padding(
        //                   padding: const EdgeInsets.all(10.0),
        //                   child: Text(
        //                     categories[index],
        //                     style: TextStyle(
        //                         fontSize: 18,
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.brown),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       );
        //     }),
        //   ),
        // ),
        // SizedBox(
        //   height: 40,
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 15, right: 15),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         "Recommended for you",
        //         style: TextStyle(
        //             fontSize: 18,
        //             color: Colors.brown,
        //             fontWeight: FontWeight.bold),
        //       ),
        //       Row(
        //         children: [
        //           Text(
        //             "All",
        //             style: TextStyle(color: Colors.brown),
        //           ),
        //           SizedBox(
        //             width: 5,
        //           ),
        //           Icon(
        //             Icons.arrow_forward_ios,
        //             color: Colors.brown,
        //             size: 16,
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   height: 20,
        // ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: List.generate(recommendTitles.length, (index) {
        //       return Padding(
        //         padding: const EdgeInsets.only(left: 15),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Container(
        //               width: 140,
        //               height: 180,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(5),
        //                 image: DecorationImage(
        //                     image: NetworkImage(recommendTitles[index])),
        //               ),
        //             ),
        //             SizedBox(
        //               height: 5,
        //             ),
        //             Container(
        //               width: 140,
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     recommendImgUrls[index],
        //                     style: TextStyle(
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.brown,
        //                       height: 1.5,
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 5,
        //                   ),
        //                   Text(
        //                     "\$" + recommendPrice[index],
        //                     style: TextStyle(
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.brown,
        //                       height: 1.5,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             )
        //           ],
        //         ),
        //       );
        //     }),
        //   ),
        // ),

        // SizedBox(
        //   height: 40,
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 15, right: 15),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         "Recent Viewed",
        //         style: TextStyle(
        //             fontSize: 18,
        //             color: Colors.brown,
        //             fontWeight: FontWeight.bold),
        //       ),
        //       Row(
        //         children: [
        //           Text(
        //             "All",
        //             style: TextStyle(color: Colors.brown),
        //           ),
        //           SizedBox(
        //             width: 5,
        //           ),
        //           Icon(
        //             Icons.arrow_forward_ios,
        //             color: Colors.brown,
        //             size: 16,
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   height: 20,
        // ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: List.generate(recommendTitles.length, (index) {
        //       return Padding(
        //         padding: const EdgeInsets.only(left: 15),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Container(
        //               width: 140,
        //               height: 180,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(5),
        //                 image: DecorationImage(
        //                     image: NetworkImage(recommendTitles[index])),
        //               ),
        //             ),
        //             SizedBox(
        //               height: 5,
        //             ),
        //             Container(
        //               width: 140,
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     recommendImgUrls[index],
        //                     style: TextStyle(
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.brown,
        //                       height: 1.5,
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 5,
        //                   ),
        //                   Text(
        //                     "\$" + recommendPrice[index],
        //                     style: TextStyle(
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.brown,
        //                       height: 1.5,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             )
        //           ],
        //         ),
        //       );
        //     }),
        //   ),
        // ),

        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
