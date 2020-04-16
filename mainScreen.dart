import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'file:///C:/Users/Hp/AndroidStudioProjects/iit_app_development/lib/Screens/Home/routineScreen.dart';
import 'file:///C:/Users/Hp/AndroidStudioProjects/iit_app_development/lib/Screens/Alarm/alarmScreen.dart';
import 'file:///C:/Users/Hp/AndroidStudioProjects/iit_app_development/lib/Screens/Calendar/calendarScreen.dart';
import 'homeScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedTabIndex = 0;
  List<Widget> _pages;

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
      print(_selectedTabIndex);
    });
  }

  @override
  void initState() {

    _pages = <Widget>[
      HomeScreen(),
      RoutineScreen(),
      AlarmScreen(),
      CalendarScreen()
    ];

    super.initState();
  }

  @override
  Widget build(context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 5,
            //title: Center(child: Text('Institute of Information Technology')),
            iconTheme: new IconThemeData(color: Colors.blue[600]),
            backgroundColor: Color(0xFFFFFFFF),
          ),
          drawer: SizedBox(
            width: 300.0,
            child: Drawer(
                child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: ListView(
                      padding: const EdgeInsets.all(0),
                      children: <Widget>[
                        UserAccountsDrawerHeader(
                          accountName: Text('Ahmed Ryan'),
                          accountEmail: Text('bsse1011@iit.du.ac.bd'),
                          currentAccountPicture: CircleAvatar(
                            backgroundImage: NetworkImage('https://img.srgcdn.com/e/w:1000/SzV0VzBYUVYxa1cyQ1M3bjFPeXMuanBn.jpg'),
                          ),
                        ),
                        new ListTile(
                            leading: Icon(Icons.work),
                            title: new Text("Industry Collaboration"),
                            onTap: () {
                              Navigator.pop(context);
                            }),
                        new ListTile(
                            leading: Icon(Icons.phone),
                            title: new Text("Contact"),
                            onTap: () {
                              Navigator.pop(context);
                            }),
                        new ListTile(
                            leading: Icon(Icons.remove_circle_outline),
                            title: new Text("Log out"),
                            onTap: () {
                              Navigator.pop(context);
                            })
                      ],
                    )) // Populate the Drawer in the next step.
                ),
          ),
          body: _pages[_selectedTabIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedTabIndex,
            unselectedFontSize: 13,
            selectedFontSize: 15,
            backgroundColor: Color(0xFFFFFFFF),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assignment), title: Text('Routine')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.alarm), title: Text('Alarm')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today), title: Text('Calender')),
            ],
            selectedItemColor: Colors.blue[800],
            onTap: _changeIndex,
          )),
    );
  }
}
