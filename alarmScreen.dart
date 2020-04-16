import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmScreen extends StatefulWidget {
  AlarmScreen({Key key}) : super(key: key);

  @override
  _AlarmScreenState createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {

  String hourSun = '08:00';
  String hourMon = '08:30';
  String hourTue = '09:00';
  String hourWed = '09:30';
  String hourThu = '10:00';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            AlarmItem(hour: hourSun, day: 'Sun', switchValue: true),
            AlarmItem(hour: hourMon, day: 'Mon', switchValue: true),
            AlarmItem(hour: hourTue, day: 'Tue', switchValue: true),
            AlarmItem(hour: hourWed, day: 'Wed', switchValue: true),
            AlarmItem(hour: hourThu, day: 'Thu', switchValue: true),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {

            },
            backgroundColor: Colors.blue,
          child: Icon(
            Icons.settings,
            size: 20.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
  }
}

class AlarmItem extends StatelessWidget {
  const AlarmItem({
    Key key,
    @required this.hour,
    @required this.day,
    @required this.switchValue,
  }) : super(key: key);

  final String hour;
  final String day;
  final bool switchValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(7.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(hour, style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold
                  ),),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(day, style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                        )),
                      ),
                    ],
                  ),
                ],
              ),
              Switch.adaptive(
                value: switchValue,
                onChanged: (bool val) {
                  print(val);
                },
                activeColor: Colors.blue,
              )
            ],
          ),
          SizedBox(height: 10.0),
          SizedBox(
            child: Divider(
              height: 1.0,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}