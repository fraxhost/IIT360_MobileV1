import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iitappdevelopment/Screens/Home/Notice/generalNoticeScreen.dart';
import 'package:iitappdevelopment/Screens/Home/Notice/graduateNoticeScreen.dart';
import 'package:iitappdevelopment/Screens/Home/Notice/projectNoticeScreen.dart';
import 'package:iitappdevelopment/Screens/Home/Notice/trainingNoticeScreen.dart';
import 'package:iitappdevelopment/Screens/Home/Notice/undergraduateNoticeScreen.dart';

class NoticeScreen1 extends StatefulWidget {
  @override
  _NoticeScreen1State createState() => _NoticeScreen1State();
}

class _NoticeScreen1State extends State<NoticeScreen1> {
  Widget myItems(String heading, int color) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          if(heading=='General') return GeneralNoticeScreen();
          if(heading=='Projects') return ProjectNoticeScreen();
          if(heading=='Graduate') return GraduateNoticeScreen();
          if(heading=='Training') return TrainingNoticeScreen();
          else return UndergraduateNoticeScreen();
        }));
      },
      child: Material(
        color: Color(color),
        elevation: 14.0,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(8.0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(heading,
              style: TextStyle(color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), color: Colors.blue[800], onPressed: (){Navigator.pop(context);}),
        backgroundColor: Colors.white,
      ),
        body: StaggeredGridView.count(
          crossAxisCount: 10,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          children: <Widget>[
            myItems('General', 0xFF4CAF50),
            myItems('Projects', 0xFFFEC003),
            myItems('Undergraduate', 0xFF03A9F3),
            myItems('Graduate', 0xFFE81E63),
            myItems('Training', 0xFF3F51B5),
          ],
          staggeredTiles: [
            StaggeredTile.extent(5, 190),
            StaggeredTile.extent(5, 190),
            StaggeredTile.extent(10, 180),
            StaggeredTile.extent(4, 190),
            StaggeredTile.extent(6, 190),
          ],
        ),
    );
  }
}
