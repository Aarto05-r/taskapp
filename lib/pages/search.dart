
// import 'package:badges/badges.dart';
// import 'package:task/utils/data.dart';
// import 'package:task/widgets/doctor_profile_page.dart';
// import 'package:task/theme/color.dart';
// import 'package:task/widgets/avatar_image.dart';
// import 'package:task/widgets/doctor_box.dart';
// import 'package:task/widgets/textbox.dart';
// import 'package:flutter/material.dart';

// class MorePage extends StatefulWidget {
//   const MorePage({ Key? key }) : super(key: key);

//   @override
//   _MorePageState createState() => _MorePageState();
// }

// class _MorePageState extends State<MorePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: appBgColor,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text("Explore Popular House", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 10)
// ,            child: Icon(
//               Icons.info,
//               color: Colors.grey,
//             ),
//           )
//         ],
//       ),
//       body: getBody(),
//     );
//   }

//   getBody(){
//     return 
//       SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 10, right: 10),
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Expanded(child: CustomTextBox()),
//                     SizedBox(width: 5,),
//                     Icon(Icons.filter_list_rounded, color: primary, size: 35,),
//                   ],
//                 ),
//                 SizedBox(height: 20,),
//                 // SingleChildScrollView(
//                 //   scrollDirection: Axis.horizontal,
//                 //   child: Row(
//                 //     children: List.generate(chatsData.length, (index) => 
//                 //      Padding(
//                 //        padding: const EdgeInsets.only(right: 10),
//                 //        child: Badge(
//                 //          // badgeColor: Colors.green,
//                 //          // borderSide: BorderSide(color: Colors.white),
//                 //           position: BadgePosition.topEnd(top: -3, end: 0),
//                 //           badgeContent: Text(''),
//                 //           child: AvatarImage(chatsData[index]["image"].toString())
//                 //         ),
//                 //      ) 
//                 //     )
//                 //   ),
//                 // ),
//                 SizedBox(height: 20,),
//                 getDoctorList()
//               ]
//           )
//         )
//       );
//   }

//   getDoctorList(){
//     return  Container(
//               height: 500,
//               child: GridView.custom(
//                 padding: EdgeInsets.only(
//                   bottom: 16,
//                   left: 16,
//                   right: 16,
//                 ),
//                 gridDelegate: SliverQuiltedGridDelegate(
//                   crossAxisCount: 6,
//                   mainAxisSpacing: 8,
//                   crossAxisSpacing: 8,
//                   repeatPattern: QuiltedGridRepeatPattern.inverted,
//                   pattern: const [
//                     QuiltedGridTile(4, 4),
//                     QuiltedGridTile(2, 2),
//                     QuiltedGridTile(2, 2),
//                   ],
//                 ),
//                 childrenDelegate: SliverChildBuilderDelegate((context, index) {
//                   return Container(child:Image.network(populars[index]["image"]),);}, 
//                  childCount: populars.length
//                 ),
//               ),
//             );
//   }

// }