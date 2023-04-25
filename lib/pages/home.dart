
import 'package:flutter/material.dart';
import 'package:task/pages/search.dart';
import 'package:task/theme/color.dart';
import 'package:task/utils/data.dart';
import 'package:task/widgets/category_item.dart';
import 'package:task/widgets/custom_image.dart';
import 'package:task/widgets/custom_textbox.dart';
import 'package:task/widgets/icon_box.dart';
import 'package:task/widgets/property_item.dart';
import 'package:task/widgets/recent_item.dart';
import 'package:task/widgets/recommend_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return 
      CustomScrollView(
        slivers: <Widget>[
          // SliverAppBar(
          //   backgroundColor: appBgColor,
          //   pinned: true,
          //   snap: true,
          //   floating: true,
          //   title: getHeader(),
          // ),
          SliverToBoxAdapter(child:getHeader()),
          SliverToBoxAdapter(
            child: getBody()
          )
        ],
      );
  }

  getHeader(){
    return Container(
      
            width: double.infinity, height: 240,
            margin: EdgeInsets.only(right: 0),
            decoration: BoxDecoration(
             color: Colors.blue,
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
                Container(
                   width: double.infinity, height: 180,
                   color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  maxRadius: 35,
                                  child: Icon(Icons.person,size: 45,),
                                ),
                                
                        Icon(Icons.notifications_active,color: Colors.black,)
                              ],
                            ),
                             SizedBox(height: 10,),
                            Text("Good morning and Stay helathy", 
                              style: TextStyle(color: Colors.white54, fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text("Hi Jeny , How are you?",
                              style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                
                Positioned(
                  left:40, top:190,
                  child: Container(height:40,width:300,
                    color:Colors.white,child:CustomTextBox(hint: "Search", prefix: Icon(Icons.search, color: Colors.red), )
                )),
                
              ],
            )
          );
      // Column(
      //   children: [
      //     Container(
      //       color: Colors.blue,
      //             height: 280,
      //       child: Stack(
      //         children:<Widget> [
      //           Positioned(left:95, 
      //             top:200,child: 
      //             Container(color:Colors.white,child: 
      //             CustomTextBox(hint: "Search", prefix: Icon(Icons.search, color: Colors.grey), ))),
      //           Container(
                  
      //             child: Padding(
      //               padding: const EdgeInsets.all(10),
      //               child: Column(
      //                 children: [
      //                   SizedBox(height: 20,),
      //                   Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Row(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           CircleAvatar(
      //                             maxRadius: 35,
      //                             child: Icon(Icons.person,size: 45,),
      //                           ),
                                
      //                   Icon(Icons.notifications_active,color: Colors.black,)
      //                         ],
      //                       ),
      //                        SizedBox(height: 10,),
      //                       Text("Good morning and Stay helathy", 
      //                         style: TextStyle(color: Colors.white54, fontSize: 16, fontWeight: FontWeight.w500),
      //                       ),
      //                       Text("Hi Jeny , How are you?",
      //                         style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
                
                        
      //         ],
      //       ),
      //     ),
      //   ],
      // );
  }

  getBody(){
    return
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("Category", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                Container(
                  margin: EdgeInsets.only(left: 0),
                  child: listCategories(),
                ),
              ],
            ),
            
            //listPopulars(),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommended Doctor", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Text("See all", style: TextStyle(fontSize: 14, color: darker),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            listRecommended(),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Consultation Schedule", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Text("See all", style: TextStyle(fontSize: 14, color: darker),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            listRecent(),
            SizedBox(height: 100,),
            
          ],
        ),
      );
  }

  int selectedCategory = 0;
  listCategories(){
    List<Widget> lists = List.generate(categories.length, 
      (index) => CategoryItem(data: categories[index], selected: index == selectedCategory,
        onTap: (){
          setState(() {
            selectedCategory =  index;
          });
        },
      )
    );
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 5, left: 15),
        child: Row(
          children: lists
        ),
      );
  }

  // listPopulars(){
  //   return 
  //     CarouselSlider(
  //       options: CarouselOptions(
  //         height: 240,
  //         enlargeCenterPage: true,
  //         disableCenter: true,
  //         viewportFraction: .8,
  //       ),
  //       items: List.generate(populars.length, (index) => PropertyItem(data: populars[index]))
  //     );
  // }

  listRecommended(){
    List<Widget> lists = List.generate(recommended.length, 
      (index) => RecommendItem(data: recommended[index])
    );
    
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 5, left: 15),
        child: Row(
          children: lists
        ),
      );
  }

  listRecent(){
    List<Widget> lists = List.generate(recents.length, 
      (index) => RecentItem(data: recents[index])
    );
    
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 5, left: 15),
        child: Column(
          children: [
            Column(
              children: lists,
            ),
            SizedBox(height: 20,),
          ],
        ),
      );
  }

}