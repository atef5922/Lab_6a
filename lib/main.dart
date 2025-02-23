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
    // ),
    //);
  }
}
