import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'View/All Details/All detailsa.dart';
import 'View/Home/Homescreen.dart';
import 'View/Map Screen/mapscreen.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(


      title: "Bus Tracking App",
      theme: ThemeData(fontFamily:'Poppins', ),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/Home', page: () => HomeScreen()),
        GetPage(name: '/Bus', page: () => Mapscreen()),
        GetPage(name: '/Details', page: () => AllDetails()),

      ],
      home: HomeScreen(),
    );
  }
}
