import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modern_calculator/UI/screens/home_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Product Sans',
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
