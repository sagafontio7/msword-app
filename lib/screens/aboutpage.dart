import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' About page')),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hello this the miscrosoft word app with you can get the shortcut can be use anywhere we needed that',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.tealAccent, // 🔴 Button background color
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
