import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iitappdevelopment/Screens/Home/AboutIIT/aimsAndObjectivesScreen.dart';
import 'package:iitappdevelopment/Screens/Home/AboutIIT/facultyScreen.dart';
import 'package:iitappdevelopment/Screens/Home/AboutIIT/historyScreen.dart';
import 'package:iitappdevelopment/Screens/Home/AboutIIT/institutionScreen.dart';
import 'package:iitappdevelopment/Screens/Home/AboutIIT/officerAndStaffScreen.dart';

class AboutIIT extends StatefulWidget {
  @override
  _AboutIITState createState() => _AboutIITState();
}

class _AboutIITState extends State<AboutIIT> {
  Widget myItems(String heading, int color) {
    return InkWell(
      onTap: () {
        if (heading == 'Institution')
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => InstitutionScreen()));
        else if (heading == 'History')
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HistoryScreen()));
        else if (heading == 'Aims and Objectives')
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AimsAndObjectivesScreen()));
        else if (heading == 'Faculty')
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FacultyScreen()));
        else if (heading == 'Officer and Staff')
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OfficerAndStaffScreen()));
      },
      child: Material(
        color: Color(color),
        elevation: 14.0,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(8.0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              heading,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
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
        title: Text('About IIT'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.blue[800],
            onPressed: () {
              Navigator.pop(context);
            }),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 10,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        children: <Widget>[
          myItems('Institution', 0xFF4CAF50),
          myItems('History', 0xFFFEC003),
          myItems('Aims and Objectives', 0xFF03A9F3),
          myItems('Faculty', 0xFFE81E63),
          myItems('Officer and Staff', 0xFF3F51B5),
        ],
        staggeredTiles: [
          StaggeredTile.extent(5, 170),
          StaggeredTile.extent(5, 170),
          StaggeredTile.extent(10, 150),
          StaggeredTile.extent(4, 170),
          StaggeredTile.extent(6, 170),
        ],
      ),
    );
  }
}
