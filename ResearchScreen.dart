import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResearchScreen extends StatefulWidget {
  @override
  _ResearchScreenState createState() => _ResearchScreenState();
}

class _ResearchScreenState extends State<ResearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              expandedHeight: 120.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Research'),
                centerTitle: true,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                  [
                    Container(height:100, color: Colors.white,child: Text('Optimization')),
                    Container(height:100, color: Colors.white,child: Text('Cloud Computing')),
                    Container(height:100, color: Colors.white,child: Text('Image Processing and Pattern Recognition')),
                    Container(height:100, color: Colors.white,child: Text('Information Retrieval')),
                    Container(height:100, color: Colors.white,child: Text('Wireless Network and Security')),
                    Container(height:100, color: Colors.white,child: Text('Software Engineering')),
                  ]
              ),
            )
          ],
        ));

  }
}
