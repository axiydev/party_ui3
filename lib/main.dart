import 'package:flutter/material.dart';
import 'package:party_ui/animations/fade_animation.dart';
import 'package:party_ui/pages/home_page.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes:{
        HomePage.id:(context){
          return HomePage();
          },
      },
      debugShowCheckedModeBanner:false,
    );
  }
}

