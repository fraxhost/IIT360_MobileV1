import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsAndEventsScreen extends StatefulWidget {
  @override
  _NewsAndEventsScreenState createState() => _NewsAndEventsScreenState();
}

class _NewsAndEventsScreenState extends State<NewsAndEventsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: [
              Container(child: Text('Event - 1')),
              Container(child: Text('Event - 2')),
              Container(child: Text('Event - 3')),
              Container(child: Text('Event - 4')),
              Container(child: Text('Event - 5')),
              Container(child: Text('Event - 6')),
            ]),
      ),
    );
  }
}
