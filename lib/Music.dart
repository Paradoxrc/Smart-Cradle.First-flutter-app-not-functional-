import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  List<String> items = ['song1', 'song2', 'song3', 'song4'];
  String? selectedItem = 'song1';
  double soundValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Play Some Music To Soothe Your Baby",
                  style: TextStyle(fontSize: 21),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Image.asset(
                  'assets/images/image2.png', // Replace with your image path
                  width: 365,
                  height: 300,
                ),
                SizedBox(height: 20),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  value: selectedItem,
                  onChanged: (newValue) {
                    setState(() {
                      // Update selected item
                      selectedItem = newValue;
                    });
                  },
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            Row(
              children: [
                Text('Sound Adjustment'),
                SizedBox(width: 10),
                Expanded(
                  child: Slider(
                    value: soundValue,
                    onChanged: (newValue) {
                      setState(() {
                        // Update sound adjustment value
                        soundValue = newValue;
                      });
                    },
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
