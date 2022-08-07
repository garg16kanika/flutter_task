import 'package:flutter/material.dart';
import 'package:learning_app/pages/buy_now.dart';
import 'package:learning_app/pages/home_page.dart';
import 'package:learning_app/pages/login_page.dart';

import 'pages/Course_details_page.dart';
import 'pages/about_us.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      title: 'E-learning App',
      routes: {
        '/': (context) => LoginPage(),
        'home': (context) => HomePage(),
        'course_details': (context) => CourseDetailsPage(),
        'About_us': (context) => AboutUs(),
        'buyNow': (context) => BuyNow()
      },
    );
  }
}
