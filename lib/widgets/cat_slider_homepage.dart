import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:forrealclothing/pages/category.dart';
import 'package:forrealclothing/pages/category2.dart';

class CatSliderHomePage extends StatefulWidget {
  final List<String> items;

  CatSliderHomePage({required this.items});

  @override
  _CatSliderHomePageState createState() =>
      _CatSliderHomePageState();
}

class _CatSliderHomePageState extends State<CatSliderHomePage> {
  int activeIndex = 0;
  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          width: 170,
          child: CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setActiveDot(index);
              },
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              autoPlayAnimationDuration: Duration(seconds: 2),
              viewportFraction: 1.0,
            ),
            items: widget.items.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: ()  => Navigator.push(context, MaterialPageRoute(builder: (context) => Category2(items: [],))),
                        child: Container(
                          width: MediaQuery.of(context).size.width/2,
                           decoration:BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                             image: DecorationImage(
                               image: NetworkImage(item),
                               fit: BoxFit.cover,
                             ),

                        )),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 5, ),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     children: [
                      //       // Icon(
                      //       //   Icons.favorite_border_rounded,
                      //       //   color: Colors.white,
                      //       //   size: 28,
                      //       // ),
                      //       SizedBox(
                      //         width: 15,
                      //       ),
                      //
                      //       SizedBox(
                      //         width: 15,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150, left: 20),
                        child: Text('Peacock Collection',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      ),
                      // Container(
                      //   width: MediaQuery.of(context).size.width/2,
                      //   color: Colors.brown.withOpacity(0.1),
                      // ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
        ),
        // Positioned(
        //   left: 0,
        //   right: 0,
        //   bottom: 10,
        //   child: Row(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       children: List.generate(widget.items.length, (idx) {
        //         return activeIndex == idx ? ActiveDot() : InactiveDot();
        //       })),
        // )
      ],
    );
  }
}





// class ActiveDot extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 8.0),
//       child: Container(
//         width: 25,
//         height: 8,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5),
//         ),
//       ),
//     );
//   }
// }
//
// class InactiveDot extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 8.0),
//       child: Container(
//         width: 8,
//         height: 8,
//         decoration: BoxDecoration(
//           color: Colors.white54,
//           borderRadius: BorderRadius.circular(5),
//         ),
//       ),
//     );
//   }
// }