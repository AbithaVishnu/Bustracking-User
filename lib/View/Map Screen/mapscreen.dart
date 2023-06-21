import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../contant/bottomnavigation.dart';

class Mapscreen extends StatelessWidget {
  const Mapscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        body:  Stack(
            children: [
              Container(
                width: 1053,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    // Image
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: DecorationImage(
                          image: AssetImage("Assets/Images/Map of Birmingham (County).png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Back Button
                    Positioned(
                      top: 15,
                      left: 15,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back,size:24,color: HexColor("#FF5F1F")),
                        onPressed: () {
                        Get.back();
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: 360,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 10,left: 27),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.orange, width: 2),
                          ),
                          child: Image.asset(
                            'Assets/Images/Ellipse 11 (2).png',
                            fit: BoxFit.cover,
                          ),
                        ),SizedBox(width: 27,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'AR Travels',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: HexColor("#EB4335"),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.0,
                                ),
                              ),
                              Text(
                                'KL23545',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: HexColor("#000000"),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.0,
                                ),
                              ),
                              Text(
                                'Palakkad To Chittur',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: HexColor("#545454"),
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: GestureDetector(onTap: (){
                            Get.toNamed("/Details");
                          },
                            child: Text(
                              'All Details',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: HexColor("#FF5F1F"),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}
