import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300],
        primaryColor: Colors.deepOrange,
        //primarySwatch: Colors.orange,
      ),
      home: HomePage()
    );
  }
}

