import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'View/Home/Homescreen.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(


      title: "Bus Tracking App",
      theme: ThemeData(fontFamily:'Poppins', ),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/Home', page: () => HomeScreen()),



      ],
      home: HomeScreen(),
    );
  }
}
