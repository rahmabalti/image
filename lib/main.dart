import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kindacode.com"),
      ),
      body: Stack(
        children: [
          Image.network('https://www.kindacode.com/wp-content/uploads/2020/10/sample.jpg', width: double.infinity, height: 250, fit: BoxFit.cover),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            bottom: 10,
            right: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: 300,
              color: Colors.black54,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'I Like Potatoes And Oranges',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),

              alignment: widget(child: Image.asset('assets/dessous.png', width: double.infinity, height: 250, fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }

  widget({required Image child}) {}
}
