import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    backgroundColor:  HexColor("#FF5F1F"),
    selectedItemColor: HexColor("#FFFFFF"),

    currentIndex: _selectedIndex,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    onTap: (index) => setState(() => _selectedIndex = index),
    type: BottomNavigationBarType.fixed,

    items: [

    BottomNavigationBarItem(
    icon: GestureDetector(
    onTap: (){
    Get.toNamed('/Home');
    },
    child: Image.asset(
    "Assets/Images/Vector (1).png",
    height: 30,width: 36,
    ),
    ),


    label: ""
    ),
    BottomNavigationBarItem(
    icon: GestureDetector(
    onTap: (){
    Get.toNamed('/Bus');
    },
    child: Image.asset(
    "Assets/Images/Vector (2).png",
    height: 30,width: 36,
    ),
    ),


    label: ""
    ),
    BottomNavigationBarItem(
    icon: GestureDetector(
    onTap: (){

    },
    child: Image.asset(
    "Assets/Images/Group (2).png",
    height: 30,width: 36,
    ),
    ),


    label: ""
    ),

    ],
    );

  }
}