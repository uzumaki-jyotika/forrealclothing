import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:forrealclothing/pages/category.dart';

import 'custom_slider.dart';

class CategorySlider extends StatefulWidget {
  final List<String> items;

  CategorySlider({required this.items});

  @override
  _CategorySliderState createState() =>
      _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
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
          // height: 200,
          width: MediaQuery.of(context).size.width,
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

                        child: Container(

                            width: MediaQuery.of(context).size.width,
                            decoration:BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(item),
                                fit: BoxFit.cover,
                              ),

                            ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 180, left: 20),
                        child: Text('Peacock Collection',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,

                        ),),
                      ),
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
