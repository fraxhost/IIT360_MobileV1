import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iitappdevelopment/Screens/Home/NoticeScreen.dart';
import 'package:iitappdevelopment/Screens/Home/ResearchScreen.dart';
import 'package:iitappdevelopment/Screens/Home/academicScreen.dart';
import 'package:iitappdevelopment/Screens/Home/lifeInIITScreen.dart';
import 'file:///C:/Users/Hp/AndroidStudioProjects/iit_app_development/lib/Screens/Home/aboutIITScreen.dart';
import 'package:iitappdevelopment/Screens/mainScreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            ))
    );
  }
}

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 3),
];

List<Widget> _tiles = <Widget>[
  _Example01Tile(backgroundColor: Colors.green, iconData: Icons.priority_high),
  _Example01Tile(backgroundColor: Colors.deepOrange, iconData: Icons.school),
  _Example01Tile(backgroundColor: Colors.amber, iconData: Icons.email),
  _Example01Tile(backgroundColor: Colors.pink, iconData: Icons.favorite),
  _Example01Tile(backgroundColor: Colors.indigo, iconData: Icons.search),
];

class _Example01Tile extends StatelessWidget {
  _Example01Tile({this.backgroundColor, this.iconData});

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            if(iconData == Icons.priority_high) return AboutIIT();
            else if(iconData == Icons.favorite) return LifeInIITScreen();
            else if(iconData == Icons.school) return AcademicScreen();
            else if(iconData == Icons.search) return ResearchScreen();
            else return NoticeScreen1();
          })
          );
        },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}