import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Column(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 16),
          //       child: ExpandableText('lalala',
          //         style: TextStyle(
          //             fontSize: 12.5,
          //             color: Colors.white,
          //             fontWeight: FontWeight.w400
          //         ),
          //         expandText: 'more',
          //         collapseText: 'less',
          //         expandOnTextTap: true,
          //         collapseOnTextTap: true,
          //         maxLines: 1,
          //         linkColor: Colors.grey,
          //       ),
          //     ),
          //   ],
          // ),
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    'Floral print Empire Lehenga',
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 14
                  ),
                ),
                Text(
                  'Music title',style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            // leading: Icon(
            //   Icons.music_note_outlined, color: Colors.white,
            // ),
          ),
        ],
      ),

    );
  }
}


class ProductDescriptionSideBar extends StatelessWidget {
  const ProductDescriptionSideBar({Key? key}) : super(key: key);
  final double _iconSize =20;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      child: Column(
        children: [
          IconButton(onPressed: () {},
            icon: Icon(Icons.favorite_border_sharp, color: Colors.white,),
            iconSize: _iconSize,
          ),

          // SizedBox(height: 10,),
          IconButton(onPressed: () {},
            icon: Icon(Icons.share_outlined, color: Colors.white,),
            iconSize: _iconSize,
          ),

          // SizedBox(height: 10,),
        ],
      ),
    );
  }
}



