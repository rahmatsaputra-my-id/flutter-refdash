import 'package:flutter/material.dart';
import 'package:dashdesign1/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  var selectedItem = 0;

  List children = [
    DashboardPage(),
    DashboardPage(),
    DashboardPage(),
    DashboardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: children[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1b1b1b),
        selectedItemColor: Color(0xfffd4f99),
        iconSize: 27,
        currentIndex: selectedItem,
        unselectedLabelStyle: TextStyle(color: Color(0xff1b1b1b)),
        unselectedItemColor: Color(0xff888888),
        onTap: (currindex){
          setState(() {
            selectedItem = currindex;
          });
        },

        items: [
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.home),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD4F99)
                ),
              )
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.search),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD4F99)
                ),
              )
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.camera_alt),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD4F99)
                ),
              )
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.person_outline),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD4F99)
                ),
              )
          )
        ],
      ),
    );
  }
}
