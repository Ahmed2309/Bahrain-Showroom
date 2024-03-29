// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gradient Background',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85.0),
        child: AppBar(
          title: Text(''),
          backgroundColor: Color(0xFF1F4E36),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: content(), // Center the carousel slider
      ),
    );
  }

  Widget content() {
    return CarouselSlider(
      items: [1, 2, 3, 4, 5].map((i) {
        return Container(
          width: MediaQuery.of(context)
              .size
              .width, // Set width equal to screen width
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "text $i",
              style: TextStyle(fontSize: 40),
            ),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: 350,
      ),
    );
  }
}
