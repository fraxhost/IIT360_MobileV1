import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RoutineScreen extends StatefulWidget {
  @override
  _RoutineScreenState createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {

  double iconSize = 40;
  Color headerColor = Colors.grey[100];
  Color lunchColor = Colors.lightGreen[100];
  Color sundayColor = Colors.yellow[100];
  Color mondayColor = Colors.red[100];
  Color tuesdayColor = Colors.indigo[100];
  Color wednesdayColor = Colors.deepOrange[100];
  Color thursdayColor = Colors.blue[100];

  //Sunday
  String sun10 = 'CSE 501';
  String insSun10 = 'KMS';
  String sun11 = 'CSE 501';
  String insSun11 = 'KMS';
  String sun12 = 'CSE 501';
  String insSun12 = 'KMS';
  String sun2 = 'CSE 501';
  String insSun2 = 'KMS';
  String sun3 = 'CSE 501';
  String insSun3 = 'KMS';
  String sun4 = 'CSE 501';
  String insSun4 = 'KMS';

  //Monday
  String mon10 = 'CSE 501';
  String insMon10 = 'KMS';
  String mon11 = 'CSE 501';
  String insMon11 = 'KMS';
  String mon12 = 'CSE 501';
  String insMon12 = 'KMS';
  String mon2 = 'CSE 501';
  String insMon2 = 'KMS';
  String mon3 = 'CSE 501';
  String insMon3 = 'KMS';
  String mon4 = 'CSE 501';
  String insMon4 = 'KMS';

  //Tuesday
  String tue10 = 'CSE 501';
  String insTue10 = 'KMS';
  String tue11 = 'CSE 501';
  String insTue11 = 'KMS';
  String tue12 = 'CSE 501';
  String insTue12 = 'KMS';
  String tue2 = 'CSE 501';
  String insTue2 = 'KMS';
  String tue3 = 'CSE 501';
  String insTue3 = 'KMS';
  String tue4 = 'CSE 501';
  String insTue4 = 'KMS';

  //Wednesday
  String wed10 = 'CSE 501';
  String insWed10 = 'KMS';
  String wed11 = 'CSE 501';
  String insWed11 = 'KMS';
  String wed12 = 'CSE 501';
  String insWed12 = 'KMS';
  String wed2 = 'CSE 501';
  String insWed2 = 'KMS';
  String wed3 = 'CSE 501';
  String insWed3 = 'KMS';
  String wed4 = 'CSE 501';
  String insWed4 = 'KMS';

  //Thursday
  String thu10 = 'CSE 501';
  String insThu10 = 'KMS';
  String thu11 = 'CSE 501';
  String insThu11 = 'KMS';
  String thu12 = 'CSE 501';
  String insThu12 = 'KMS';
  String thu2 = 'CSE 501';
  String insThu2 = 'KMS';
  String thu3 = 'CSE 501';
  String insThu3 = 'KMS';
  String thu4 = 'CSE 501';
  String insThu4 = 'KMS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          //border: TableBorder.all(color: Colors.white),
          columnWidths: {
            0: FractionColumnWidth(.12),
            1: FractionColumnWidth(.176),
            2: FractionColumnWidth(.176),
            3: FractionColumnWidth(.176),
            4: FractionColumnWidth(.176),
            5: FractionColumnWidth(.176),
          },
          children: [
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(0.5),
                child: Container(
                  height: 30,
                  color: headerColor,
                ),
              ),
              DayContainer(headerColor: headerColor, day: 'Sun',),
              DayContainer(headerColor: headerColor, day: 'Mon',),
              DayContainer(headerColor: headerColor, day: 'Tue',),
              DayContainer(headerColor: headerColor, day: 'Wed',),
              DayContainer(headerColor: headerColor, day: 'Thu',),
            ]),
            TableRow(children: [
              TimeContainer(headerColor: headerColor, time: '10:00',),
              CourseContainer(dayColor: sundayColor, course: sun10, instructor: insSun10),
              CourseContainer(dayColor: mondayColor, course: mon10, instructor: insMon10),
              CourseContainer(dayColor: tuesdayColor, course: tue10, instructor: insTue10),
              CourseContainer(dayColor: wednesdayColor, course: wed10, instructor: insWed10),
              CourseContainer(dayColor: thursdayColor, course: thu10, instructor: insThu10),
            ]),
            TableRow(children: [
              TimeContainer(headerColor: headerColor, time: '11:00',),
              CourseContainer(dayColor: sundayColor, course: sun11, instructor: insSun11),
              CourseContainer(dayColor: mondayColor, course: mon11, instructor: insMon11),
              CourseContainer(dayColor: tuesdayColor, course: tue11, instructor: insTue11),
              CourseContainer(dayColor: wednesdayColor, course: wed11, instructor: insWed11),
              CourseContainer(dayColor: thursdayColor, course: thu11, instructor: insThu11),
            ]),
            TableRow(children: [
              TimeContainer(headerColor: headerColor, time: '12:00',),
              CourseContainer(dayColor: sundayColor, course: sun12, instructor: insSun12),
              CourseContainer(dayColor: mondayColor, course: mon12, instructor: insMon12),
              CourseContainer(dayColor: tuesdayColor, course: tue12, instructor: insTue12),
              CourseContainer(dayColor: wednesdayColor, course: wed12, instructor: insWed12),
              CourseContainer(dayColor: thursdayColor, course: thu12, instructor: insThu12),
            ]),
            TableRow(children: [
              TimeContainer(headerColor: headerColor, time: '01:00',),
              LunchContainer(lunchColor: lunchColor, text: 'L',),
              LunchContainer(lunchColor: lunchColor, text: 'U',),
              LunchContainer(lunchColor: lunchColor, text: 'N',),
              LunchContainer(lunchColor: lunchColor, text: 'C',),
              LunchContainer(lunchColor: lunchColor, text: 'H',),
            ]),
            TableRow(children: [
              TimeContainer(headerColor: headerColor, time: '02:00',),
              CourseContainer(dayColor: sundayColor, course: sun2, instructor: insSun2),
              CourseContainer(dayColor: mondayColor, course: mon2, instructor: insMon2),
              CourseContainer(dayColor: tuesdayColor, course: tue2, instructor: insTue2),
              CourseContainer(dayColor: wednesdayColor, course: wed2, instructor: insWed2),
              CourseContainer(dayColor: thursdayColor, course: thu2, instructor: insThu2),
            ]),
            TableRow(children: [
              TimeContainer(headerColor: headerColor, time: '03:00',),
              CourseContainer(dayColor: sundayColor, course: sun3, instructor: insSun3),
              CourseContainer(dayColor: mondayColor, course: mon3, instructor: insMon3),
              CourseContainer(dayColor: tuesdayColor, course: tue3, instructor: insTue3),
              CourseContainer(dayColor: wednesdayColor, course: wed3, instructor: insWed3),
              CourseContainer(dayColor: thursdayColor, course: thu3, instructor: insThu3),
            ]),
            TableRow(children: [
              TimeContainer(headerColor: headerColor, time: '04:00',),
              CourseContainer(dayColor: sundayColor, course: sun4, instructor: insSun4),
              CourseContainer(dayColor: mondayColor, course: mon4, instructor: insMon4),
              CourseContainer(dayColor: tuesdayColor, course: tue4, instructor: insTue4),
              CourseContainer(dayColor: wednesdayColor, course: wed4, instructor: insWed4),
              CourseContainer(dayColor: thursdayColor, course: thu4, instructor: insThu4),
            ]),
          ],
        ),
      ));
  }
}

class LunchContainer extends StatelessWidget {
  const LunchContainer({
    Key key,
    @required this.lunchColor,
    @required this.text,
  }) : super(key: key);

  final Color lunchColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: Container(
        height: 70,
        decoration: new BoxDecoration(
            color: lunchColor,
            borderRadius: new BorderRadius.circular(2)
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class DayContainer extends StatelessWidget {
  const DayContainer({
    Key key,
    @required this.headerColor,
    @required this.day,
  }) : super(key: key);

  final Color headerColor;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: Container(
        height: 30,
        decoration: new BoxDecoration(
            color: headerColor,
            borderRadius: new BorderRadius.circular(2)
        ),
        child: Center(
            child: Text(
          day,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class TimeContainer extends StatelessWidget {
  const TimeContainer({
    Key key,
    @required this.headerColor,
    @required this.time,
  }) : super(key: key);

  final Color headerColor;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: Container(
        height: 70,
        decoration: new BoxDecoration(
            color: headerColor,
            borderRadius: new BorderRadius.circular(2)
        ),
        child: Center(
            child: Text(
          time,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}

class CourseContainer extends StatelessWidget {
  const CourseContainer({
    Key key,
    @required this.dayColor,
    @required this.course,
    @required this.instructor,
  }) : super(key: key);

  final Color dayColor;
  final String course;
  final String instructor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: Container(
        height: 70,
        decoration: new BoxDecoration(
            color: dayColor,
            borderRadius: new BorderRadius.circular(2)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              course,
              softWrap: true,
              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold
              ),
            ),
            Text(
              instructor,
              softWrap: true,
              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
