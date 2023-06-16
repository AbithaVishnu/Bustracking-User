import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class AllDetails extends StatelessWidget {
  const AllDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#F5F5F5"),

        appBar: AppBar(
          backgroundColor: HexColor("#F5F5F5"),
         elevation: 0,leading: IconButton(
          icon: Icon(Icons.arrow_back,size:24,color: HexColor("#FF5F1F"),),
          onPressed: () {
           Get.toNamed("/Bus");
          },
        ),
        ),
        body: Column(
          children: [
            Container(
              color: HexColor("#F5F5F5"),
            ),
          ],
        ),
      ),
    );
  }

}
