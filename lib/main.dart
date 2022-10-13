import 'package:flutter/material.dart';
import 'package:food/pages/food/popular_food_detail.dart';
import 'package:food/pages/food/recommended_food_detail.dart';
import 'package:food/pages/home/food_page_body.dart';
import 'package:food/pages/home/main_food_page.dart';
// import 'home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: main_food_page(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(



    );
  }
}
