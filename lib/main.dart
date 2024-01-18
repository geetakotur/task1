import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task11/components/ticket.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Text(
                    'Your tickets',
                    style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        // Handle upcoming button press
                      },
                      color:Color(0xFF3D3A3B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text('Upcoming', style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(width: 5),
                    MaterialButton(
                      onPressed: () {
                        // Handle history button press
                      },
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text('History', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Ticket(
                  containerColor: Color(0xFF9A3F85),
                  imagePath: 'assets/img.png',
                  name: 'Anuj Jain',
                  event: 'India Tour 2023',
                  dateTime: 'Event Date/Time',
                  place: 'bro',
                  overlap: false,
                ),
                Transform.translate(
                  offset: Offset(0.0, -90.0),
                  child: Ticket(
                    containerColor: Color(0xFF773CB9),
                    imagePath: 'assets/img.png',
                    name: 'Tylor Swift',
                    event: 'India Tour 2023',
                    dateTime: 'Another Date/Time',
                    place: 'bro',
                    overlap: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.0, -180.0),
                  child: Ticket(
                    containerColor: Color(0xFF3B806E),
                    imagePath: 'assets/img.png',
                    name: 'Mike Shinoda',
                    event: 'India Tour 2023',
                    dateTime: '03-04-2023,11:00am-2:00pm',
                    place: 'Mumbai Stadium,Mumbai,India',
                    overlap: true,
                  ),
                ),
                SizedBox(height: 30),
                Transform.translate(
                  offset: Offset(0.0, -180.0),
                  child: Ticket(
                    containerColor: Color(0xFFC4114E),
                    imagePath: 'assets/img.png',
                    name: 'chester Bennington',
                    event: 'India Tour 2023',
                    dateTime: '03-04-2023,11:00am-2:00pm',
                    place: 'Mumbai Stadium,Mumbai,India',
                    overlap: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.0, -260.0),
                  child: Ticket(
                    containerColor: Color(0xFF285EE3),
                    imagePath: 'assets/img.png',
                    name: 'Anson Seabra',
                    event: 'India Tour 2023',
                    dateTime: '03-04-2023,11:00am-2:00pm',
                    place: 'Mumbai Stadium,Mumbai,India',
                    overlap: true,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          // Fixed Footer with Blur
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.transparent, // Make the container transparent
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    color: Colors.white.withOpacity(0.10),
                    padding: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 350,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.home_filled,
                                color: Colors.grey,
                                size: 30,
                              ),
                              Icon(
                                Icons.groups_2_outlined,
                                color: Colors.grey,
                                size: 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.red, width: 2.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.airplane_ticket,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 15,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/img.png',
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
