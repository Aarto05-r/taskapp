
import 'package:flutter/material.dart';
import 'package:task/theme/color.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({ Key? key, required this.data, this.selected = false, this.onTap}) : super(key: key);
  final data;
  final bool selected;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            //padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
            margin: EdgeInsets.only(right: 10),
            width: 70, height: 70,
            decoration: BoxDecoration(
              color: selected ? primary : cardColor,
             // borderRadius: BorderRadius.circular(10),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.1),
                  spreadRadius: .5,
                  blurRadius: .5,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Icon(data["icon"], size: 25, color: selected ? Colors.white : Colors.black),
                
          ),
        ),
        SizedBox(height: 10,),
        Text(data["name"], maxLines: 1, overflow: TextOverflow.ellipsis, 
                    style: TextStyle(fontSize: 13, color: selected ? Colors.black : darker),
                  )
      ],
    );
  }
}