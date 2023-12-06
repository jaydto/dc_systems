// libraries
import 'dart:io';
import 'package:dc_system/utils/route-observer.dart';
import 'package:flutter/material.dart';

//Theme
import 'package:dc_system/constants/Theme.dart';


// screens
import 'package:dc_system/screens/DcSystems.dart';

void main() {
  runApp(MyApp());
}

//default routes list
Map<String, dynamic> predefinedList = {

  "/": (context) =>DcSystems(),
 
  // Add other routes and screen classes as needed
};

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
   

    return  MaterialApp(
        title: 'DcSystem',
        theme: ThemeData(
          fontFamily: 'OpenSans',
          scaffoldBackgroundColor: DcSystemColors.bgColorScreen,
        ),
        initialRoute: "/",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{...predefinedList},
        navigatorObservers: [routeObserver], // Add this line
      );
    
  }
}
