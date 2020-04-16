import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstitutionScreen extends StatefulWidget {
  @override
  _InstitutionScreenState createState() => _InstitutionScreenState();
}

class _InstitutionScreenState extends State<InstitutionScreen> {
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
              title: Text('Institution'),
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
