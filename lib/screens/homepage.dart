import 'package:flutter/material.dart';
import '../data/data.dart';
import './aboutpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                color: Colors.blueAccent,
                child: Center(child: Center(child: Text('MS WORD GUIDE'))),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aboutpage()),
                );
              },
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.star),
              title: Text('Rate'),
            ),
            ListTile(
              onTap: () {
                Share.share('Check out this awesome MS Word Shortcut app!');
              },
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('MS WORD APP'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Aboutpage()),
              );
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 44, 41, 41),
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(color: Colors.white24),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.tealAccent,
                child: Text('${index + 1}'),
              ),
              title: Text(item['key'], style: TextStyle(color: Colors.white)),
              subtitle: Text(
                item['use'],
                style: TextStyle(color: Colors.white70),
              ),
            );
          },
        ),
      ),
    );
  }
}
