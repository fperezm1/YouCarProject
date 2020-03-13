import 'package:flutter/material.dart';
import 'package:you_car/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build ( context ) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: MainScreen(),
      ), 
    );
  }


}