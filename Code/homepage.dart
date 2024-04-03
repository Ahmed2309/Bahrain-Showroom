// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  final List<String> itemNames = [
    'Used cars',
    'New cars',
    'Spare parts',
    'Insurance',
    'Events'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Madison Beer",
                style: TextStyle(
                  height: 1.2,
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "madison.beer@example.com",
                style: TextStyle(
                  fontSize: 13, // Adjust the font size as needed
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/836.jpg'),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(
                    255, 166, 52, 70), // Background color of the header
              ),
              margin: EdgeInsets.zero, // Remove any margin
              currentAccountPictureSize:
                  Size.square(70), // Adjust the size of the profile picture
            ),
            for (int i = 0; i < itemNames.length; i++)
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 16,
                  ),
                  leading: Icon(
                    i == 0
                        ? FontAwesomeIcons.car
                        : i == 1
                            ? FontAwesomeIcons.carSide
                            : i == 2
                                ? FontAwesomeIcons.wrench
                                : i == 3
                                    ? FontAwesomeIcons.pen
                                    : FontAwesomeIcons.calendarCheck,
                    size: 30,
                  ),
                  title: Text(
                    itemNames[i],
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Handle item tap
                  },
                ),
              ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Adjust the height here
        child: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  FontAwesomeIcons.anglesLeft,
                  color: Colors.white, // Set the color to white
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: Container(
            height: 30, // Adjust the height here
            child: Text(
              'Bahrain showroom', // Add the text here
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontFamily: 'RobotoSerif', // Set font family to Roboto
                fontSize: 25, // Adjust font size here
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 166, 52, 70),
          elevation: 0,
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
          aspectRatio: 10 / 8, enlargeCenterPage: true, viewportFraction: 1.01),
    );
  }
}
