
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarouselHomePage extends StatefulWidget {
  final List<String> items;

  CustomCarouselHomePage({required this.items});

  @override
  _CustomCarouselHomePageState createState() =>
      _CustomCarouselHomePageState();
}

class _CustomCarouselHomePageState extends State<CustomCarouselHomePage> {
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: NetworkImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: List.generate(widget.items.length, (idx) {
                return activeIndex == idx ? ActiveDot() : InactiveDot();
              })),
        )
      ],
    );
  }
}

class ActiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 25,
        height: 8,
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}