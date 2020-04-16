import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfficerAndStaffScreen extends StatefulWidget {
  @override
  _OfficerAndStaffScreenState createState() => _OfficerAndStaffScreenState();
}

class _OfficerAndStaffScreenState extends State<OfficerAndStaffScreen> {
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
            title: Text('Officer and Staff'),
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
              Container(child: Text('Staff - 1')),
              Container(child: Text('Staff - 2')),
              Container(child: Text('Staff - 3')),
              Container(child: Text('Staff - 4')),
              Container(child: Text('Staff - 5')),
              Container(child: Text('Staff - 6')),
              Container(child: Text('Staff - 7')),
              Container(child: Text('Staff - 8')),
              Container(child: Text('Staff - 9')),
              Container(child: Text('Staff - 10')),
              Container(child: Text('Staff - 11')),
              Container(child: Text('Staff - 12')),
            ])),
      ]),
    );
  }
}
