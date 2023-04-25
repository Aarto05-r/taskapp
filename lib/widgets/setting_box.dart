import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/theme/color.dart';


class SettingBox extends StatelessWidget {
  SettingBox({ Key? key, required this.title, required this.icon, this.color = darker }) : super(key: key);
  final title;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          SvgPicture.asset(icon, color: color, width: 22, height: 22,),
          SizedBox(height: 7,),
          Text(title, style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
class SettingItem extends StatelessWidget {
  final String? leadingIcon;
  final Color leadingIconColor;
  final Color bgIconColor;
  final String title;
  final GestureTapCallback? onTap;
  const SettingItem({ Key? key, required this.title, this.onTap, this.leadingIcon, this.leadingIconColor = Colors.white, this.bgIconColor =  primary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: leadingIcon != null ?
          [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: bgIconColor,
                shape: BoxShape.circle
              ),
              child: SvgPicture.asset(leadingIcon!, color: leadingIconColor, width: 22, height: 22,),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 17,
            )
          ]
          :
          [
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: darker,
              size: 17,
            )
          ],
        ),
      ),
    );
  }
}