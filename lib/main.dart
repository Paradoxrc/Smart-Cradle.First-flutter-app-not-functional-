import 'package:flutter/material.dart';
import 'package:flutter_application_1/Music.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            toolbarHeight: 200.0,
            centerTitle: true,
            title: Text(
              "Smart Cradle",
              style: TextStyle(fontSize: 50),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/my_image.jpg', // Replace with your image path
                  width: 450,
                  height: 450,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: Text("START"),
            tooltip: 'Start',
            backgroundColor: Color.fromARGB(255, 90, 8, 197),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Container(height: 50.0), // Adjust the height as needed
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String tile = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Open the dropdown menu
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 55.0,
                    right: 20.0,
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Welcome To Dashboard!",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 0.0,
                    right: 0.0,
                    top: 10.0,
                    bottom: 20.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        tile = 'camera';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: tile == 'camera'
                            ? Color.fromARGB(255, 2, 140, 238)
                            : Color.fromARGB(255, 179, 219, 247),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: 160,
                      padding: const EdgeInsets.all(30.0),
                      height: 160,
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera,
                            size: 60,
                          ),
                          Text(
                            "camera",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      tile = 'music';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Music()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tile == 'music'
                          ? Color.fromARGB(255, 2, 140, 238)
                          : Color.fromARGB(255, 179, 219, 247),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 160,
                    height: 160,
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.music_note,
                          size: 60,
                        ),
                        Text(
                          "Music",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 0.0,
                    right: 0.0,
                    top: 0.0,
                    bottom: 20.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        tile = 'swing';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: tile == 'swing'
                            ? Color.fromARGB(255, 2, 140, 238)
                            : Color.fromARGB(255, 179, 219, 247),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: 160,
                      padding: const EdgeInsets.all(30.0),
                      height: 160,
                      child: Column(
                        children: [
                          Icon(
                            Icons.child_care,
                            size: 60,
                          ),
                          Text(
                            "Swing",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      tile = 'temperature';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tile == 'temperature'
                          ? Color.fromARGB(255, 2, 140, 238)
                          : Color.fromARGB(255, 179, 219, 247),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    height: 160,
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.thermostat,
                          size: 80,
                        ),
                        Text(
                          "Temperature",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      tile = 'fan';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tile == 'fan'
                          ? Color.fromARGB(255, 2, 140, 238)
                          : Color.fromARGB(255, 179, 219, 247),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 160,
                    padding: const EdgeInsets.all(30.0),
                    height: 160,
                    child: Column(
                      children: [
                        Icon(
                          Icons.ac_unit,
                          size: 60,
                        ),
                        Text(
                          "Fan",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      tile = 'other';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tile == 'other'
                          ? Color.fromARGB(255, 2, 140, 238)
                          : Color.fromARGB(255, 179, 219, 247),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    height: 160,
                    width: 160,
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.other_houses,
                          size: 60,
                        ),
                        Text(
                          "Other",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
