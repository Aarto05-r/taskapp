import 'package:flutter/material.dart';
import 'package:task/theme/color.dart';
import 'package:task/utils/data.dart';
import 'package:task/widgets/custom_image.dart';
import 'package:task/widgets/setting_box.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
   @override
  Widget build(BuildContext context) {
    return 
    CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: appBgColor,
            pinned: true,
            snap: true,
            floating: true,
            title: getHeader()
          ),
          SliverToBoxAdapter(
            child: getBody()
          )
        ],
      );
  }

  getHeader(){
    return
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Account",
              style: TextStyle(color: textColor, fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      );
  }

  Widget getBody() {
    return 
    SingleChildScrollView(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          Column(
            children: [
              CustomImage(
                profile,
                width: 70, height: 70, radius: 20,
              ),
              SizedBox(height: 10,),
              Text("User", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            ],
          ),
          SizedBox(height: 20,),
          // Container(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Expanded(
          //         child: SettingBox(title: "12 courses", icon: "assets/work.svg",)
          //       ),
          //       SizedBox(width: 10,),
          //       Expanded(
          //         child: SettingBox(title: "55 hours", icon: "assets/time.svg",)
          //       ),
          //       SizedBox(width: 10,),
          //       Expanded(
          //         child: SettingBox(title: "4.8", icon: "assets/star.svg",)
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: cardColor,
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
                SettingItem(title: "Profile", 
                  leadingIcon: "assets/setting.svg",
                  bgIconColor: blue, 
                  onTap: (){
                    
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Divider(height: 0, color: Colors.grey.withOpacity(0.8),),
                ),
                SettingItem(title: "Notification", 
                  leadingIcon: "assets/bell.svg",
                  bgIconColor: green,
                  onTap: (){
                  
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Divider(height: 0, color: Colors.grey.withOpacity(0.8),),
                ),
                SettingItem(title: "Change Password", 
                  leadingIcon: "assets/bookmark.svg",
                  bgIconColor: primary,
                  onTap: (){
                  
                  },
                ),
              ]
            ),
          ),

          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: cardColor,
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
                SettingItem(title: "Favorites", 
                  leadingIcon: "assets/wallet.svg",
                  bgIconColor: purple,
                  onTap: (){
                  
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Divider(height: 0, color: Colors.grey.withOpacity(0.8),),
                ),
                SettingItem(title: "Privacy Policy", 
                  leadingIcon: "assets/shield.svg",
                  bgIconColor: orange,
                  onTap: (){
                  
                  },
                ),
              ]
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: cardColor,
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
                SettingItem(title: "Log Out", 
                  leadingIcon: "assets/logout.svg",
                  bgIconColor: darker, 
                  onTap: (){
                  },
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}