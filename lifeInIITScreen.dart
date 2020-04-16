import 'package:flutter/material.dart';

class LifeInIITScreen extends StatefulWidget {
  @override
  _LifeInIITScreenState createState() => _LifeInIITScreenState();
}

class _LifeInIITScreenState extends State<LifeInIITScreen>{

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
                    Tab(text: 'Upcoming Events'),
                    Tab(text: 'News and Events'),
                    Tab(text: 'Achievements'),
                  ]
              ),
            ),
          )
      ),
    );
  }
}
