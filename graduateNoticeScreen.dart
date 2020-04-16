import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iitappdevelopment/Services/notice.dart';

class GraduateNoticeScreen extends StatefulWidget {
  @override
  _GraduateNoticeScreenState createState() => _GraduateNoticeScreenState();
}

class _GraduateNoticeScreenState extends State<GraduateNoticeScreen> {
  List<Widget> noticeList = new List<Widget>();

  void initState() {
    Notice n1 = Notice(title: 'A1', description: 'B1');
    Notice n2 = Notice(title: 'A2', description: 'B2');

    noticeList.add(noticeContainer(n1.title, n1.description));
    noticeList.add(noticeContainer(n2.title, n2.description));
    noticeList.add(noticeContainer(n2.title, n2.description));
    noticeList.add(noticeContainer(n2.title, n2.description));
    noticeList.add(noticeContainer(n2.title, n2.description));
    noticeList.add(noticeContainer(n2.title, n2.description));

    super.initState();
  }

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
            title: Text('Graduate Notice'),
            centerTitle: true,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(noticeList),
        )
      ],
    ));
  }
}

Widget noticeContainer(String title, String notice) {
  return Card(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 18, 4, 0),
                child: Icon(Icons.date_range, color: Colors.black, size: 25.0),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 8, 0),
                child: Text('19-Mar-2020', style: TextStyle(fontSize: 18.0)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 18, 4, 0),
                child: Icon(Icons.timer, color: Colors.black, size: 25.0),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 8, 0),
                child: Text('05:31:00', style: TextStyle(fontSize: 18.0)),
              )
            ],
          ),
          Row(children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(13, 15, 0, 2),
                child: Text('BSSE Syllabus 2017-18 ',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 28.0, color: Color(0xFF000000))),
              ),
            )
          ]),
          Row(children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(13, 12, 13, 12),
                child: Text(
                    'BSSE Syllabus 2017-18 aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20.0, color: Color(0xFF000000))),
              ),
            )
          ]),
        ],
      ));
}
