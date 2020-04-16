import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacultyScreen extends StatefulWidget {
  @override
  _FacultyScreenState createState() => _FacultyScreenState();
}

class _FacultyScreenState extends State<FacultyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: false,
          expandedHeight: 120.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Faculty'),
            centerTitle: true,
          ),
        ),
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 100.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0),
            delegate: SliverChildListDelegate([
              Container(child: Text('Faculty - 1')),
              Container(child: Text('Faculty - 2')),
              Container(child: Text('Faculty - 3')),
              Container(child: Text('Faculty - 4')),
              Container(child: Text('Faculty - 5')),
              Container(child: Text('Faculty - 6')),
              Container(child: Text('Faculty - 7')),
              Container(child: Text('Faculty - 8')),
              Container(child: Text('Faculty - 9')),
              Container(child: Text('Faculty - 10')),
              Container(child: Text('Faculty - 11')),
              Container(child: Text('Faculty - 12')),
            ])),
      ]),
    );
  }
}
