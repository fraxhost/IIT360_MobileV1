import 'package:flutter/material.dart';

class AcademicScreen extends StatefulWidget {
  @override
  _AcademicScreenState createState() => _AcademicScreenState();
}

class _AcademicScreenState extends State<AcademicScreen>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                  tabs: [
                    Tab(text: 'Undergraduate'),
                    Tab(text: 'Graduate'),
                    Tab(text: 'Training'),
                  ]
              ),
            ),
          )
      ),
    );
  }
}
