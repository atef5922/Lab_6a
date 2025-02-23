import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstUI());
}

class FirstUI extends StatelessWidget {
  const FirstUI({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                color: const Color.fromARGB(255, 121, 207,
                    195), // You can style the Container as needed
                child: DrawerHeader(
                  child: Row(
                    children: [
                      Icon(Icons.tiktok),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Tiktok"),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text('Contact'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.support),
                title: Text('Support'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Advanced UI - LAB 06 "),
          backgroundColor: const Color.fromARGB(255, 95, 2, 2),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://i.pinimg.com/1200x/09/6f/f7/096ff7fd728e880bca931a69a1417a5f.jpg",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
