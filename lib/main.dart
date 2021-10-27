import 'package:flutter/material.dart';
import 'package:futuryze_assignment/view/screens/leave_screen.dart';
import 'package:futuryze_assignment/view/screens/main_screen.dart';
import 'package:futuryze_assignment/view/screens/stats_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
