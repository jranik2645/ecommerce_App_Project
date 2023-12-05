import 'package:ecommerce_app_project/page/HomePage.dart';
import 'package:ecommerce_app_project/page/cartPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
          theme: ThemeData(
               scaffoldBackgroundColor: Colors.white,

          ),  routes: {
             "/":(context)=>HomePage(),
              "cartPage":(context)=>cartPage(),

    }
    );
  }
}
