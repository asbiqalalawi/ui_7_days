import 'package:flutter/material.dart';
import 'package:ui_7_days/day1/splash_screen_1.dart';
import 'package:ui_7_days/day1/splash_screen_2.dart';
import 'package:ui_7_days/day2/get_started_page_1.dart';
import 'package:ui_7_days/day2/get_started_page_2.dart';
import 'package:ui_7_days/day3/form_page_1.dart';
import 'package:ui_7_days/day3/form_page_2.dart';
import 'package:ui_7_days/day4/empty_page_1.dart';
import 'package:ui_7_days/day4/empty_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '7 Days UI',
      home: EmptyPage2(),
    );
  }
}
