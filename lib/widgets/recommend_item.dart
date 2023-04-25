import 'package:flutter/material.dart';
import 'package:task/theme/color.dart';
import 'package:task/widgets/icon_box.dart';

import 'custom_image.dart';

class RecommendItem extends StatelessWidget {
  RecommendItem({ Key? key, required this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 130, height: 170,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: [
                
                
                CustomImage(data["image"], radius: 20, width: double.infinity, height: double.infinity,),
                Positioned(
                  left:95, top:5,
                  child: IconBox(child: Icon(Icons.favorite_border, color: Colors.black, size: 20,), bgColor: Colors.white,)
                ),
                Container(
                  width: double.infinity, height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.white.withOpacity(.01),
                      ]
                    )
                  ),
                ),
                // Positioned(
                //   bottom: 12, left: 10,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(data["name"], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),),
                //       SizedBox(height: 5,),
                //       Row(
                //         children: [
                //           Icon(Icons.place_outlined, color: Colors.white, size: 13,),
                //           SizedBox(width: 3,),
                //           Text(data["location"], style: TextStyle(fontSize: 13, color: Colors.white,),),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            )
          ),
          Container(
            color: Colors.white,
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data["name"], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),),
                    SizedBox(height: 5,),
                    
                    Text(data["Specialist"], style: TextStyle(fontSize: 13, color: Colors.black,),),
                  ],
                ),
          ),
      ],
    );
  }
}