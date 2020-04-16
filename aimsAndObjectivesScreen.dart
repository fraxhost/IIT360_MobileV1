import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AimsAndObjectivesScreen extends StatefulWidget {
  @override
  _AimsAndObjectivesScreenState createState() => _AimsAndObjectivesScreenState();
}

class _AimsAndObjectivesScreenState extends State<AimsAndObjectivesScreen> {
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
              title: Text('Aims and Objectives'),
              centerTitle: true,
            ),
          ),
          /*SliverList(
            delegate: SliverChildListDelegate(

            ),
          )*/
        ],
      ),
    );
  }
}
