import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../contant/bottomnavigation.dart';

class AllDetails extends StatelessWidget {
  const AllDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F5F5F5"),
      appBar: AppBar(
        backgroundColor: HexColor("#F5F5F5"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 24, color: HexColor("#FF5F1F")),
          onPressed: () {
            Get.toNamed("/Bus");
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0), // Adjusted padding
              child: Container(
                color: HexColor("#F5F5F5"),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'Assets/Images/My Location (1).png',
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Bus Live Tracking",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: HexColor("#000000"),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Adjusted margin
                decoration: BoxDecoration(
                  color: HexColor("#F5F5F5"),
                  border: Border.all(color: Color(0xFFB0B0B0), width: 1),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 1),
                      blurRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 26),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: HexColor("#FF5F1F"),
                          width: 1.67,
                        ),
                      ),
                      child: Image.asset(
                        'Assets/Images/Ellipse 11 (3).png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "AR Travels",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: HexColor("#EB4335"),
                        fontSize: 23.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.0,
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "KL23545",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: HexColor("#000000"),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.0,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 112,
                              height: 29,
                              decoration: BoxDecoration(
                                color: HexColor("#F5F5F5"),
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: Color(0xFF989898),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Palakkad',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: HexColor("#838383"),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 112,
                              height: 29,
                              decoration: BoxDecoration(
                                color: HexColor("#F5F5F5"),
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: Color(0xFF989898),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Chittur',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: HexColor("#838383"),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Adjusted spacing
                       Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                "Assets/Images/Rectangle 1@2x.png",  width: 193,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 112,
                                  height: 29,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF989898),
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: Color(0xFF989898),
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1h 30m',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your Bus will reach in 20 minutes",
                          style: TextStyle(
                              color: HexColor("#000000"),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
