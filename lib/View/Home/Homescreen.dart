import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 362,
          height: 182,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 33.0, right: 42, top: 26, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "Assets/Images/Standing Man.png",
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(width: 13),
                    Expanded(
                      child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                          color: HexColor("#FFFFFF"),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: HexColor("#EB4335"), width: 1),
                        ),
                        child: TextFormField(
                          // Add your first TextFormField properties here
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "From(Current Location)",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: HexColor("#A0A0A0"),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.0,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 19,vertical: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Image.asset(
                    "Assets/Images/Line 3.png",
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "Assets/Images/My Location.png",
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: 13),
                    Expanded(
                      child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                          color: HexColor("#FFFFFF"),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: HexColor("#EB4335"), width: 1),
                        ),
                        child: TextFormField(
                          // Add your second TextFormField properties here
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "To",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: HexColor("#A0A0A0"),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.0,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 19,vertical: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded( // Add this Expanded widget
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("Assets/Images/your_image.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
