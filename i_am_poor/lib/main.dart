import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[500],
        appBar: AppBar(
          title: Center(child: Text('I Am Poor')),
          backgroundColor: Colors.deepOrange[800],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://media.images.yourquote.in/post/large/0/0/8/505/MJ194004.jpg'),
          ),
        ),
      ),
    ),
  );
}
