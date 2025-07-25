import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/country_code_picker.dart';
import 'package:flutter_widget_of_the_week/dropdown_menu.dart';
// import 'package:flutter_widget_of_the_week/shared_preference_widget.dart';
// import 'package:flutter_widget_of_the_week/animated_container_widget.dart';
// import 'package:flutter_widget_of_the_week/image_widget.dart';
/// import 'package:flutter_widget_of_the_week/image_widget.dart';
// import 'package:flutter_widget_of_the_week/country_code_picker.dart';
// import 'package:flutter_widget_of_the_week/home_screen.dart';
// import 'package:flutter_widget_of_the_week/home_screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CountryCodePicker(),
      debugShowCheckedModeBanner: false,
    );
  }
}


