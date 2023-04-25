import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        leading: CircleAvatar(),
        actions: [
          Icon(Icons.notifications_active)
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width:400,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                     Icon(Icons.notifications_active)
                  ],
                ),
                Text("Good Morning and stay Healthy"),
                Text("Hi Jeny, How are you?")
               
              ],
            ),
          ),
          Positioned(
            top: 250,
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.settings_ethernet),
                hintText: "Search Doctor or Sympton",
                prefixIcon: Icon(Icons.search)
              ),

            )),

            Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Icon(Icons.build_circle),
                      Text("Dental")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monitor_heart),
                      Text("Heart")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.remove_red_eye),
                      Text("Eyes")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.headset),
                      Text("Brain")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.child_care),
                      Text("Baby")
                    ],
                  ),
                ],
              ),
            ),
            
        ],
      ),
    );
  }
}