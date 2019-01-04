import 'package:flutter/material.dart';

import './android_course_card.dart';
import './android_courses.dart';

class AndroidTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            constraints: new BoxConstraints.expand(),
            padding: EdgeInsets.only(top: 20.0),
            color: new Color(0xFFECEFF1),
            child: Stack(
              children: <Widget>[
                new Container(
                    child: new ListView.builder(
                        itemBuilder: (context, index) =>
                            new AndroidCourseCard(androidcourses[index]),
                        itemCount: androidcourses.length,
                        padding: new EdgeInsets.symmetric(vertical: 10.0))),
                new BackButton(color: Colors.black),
              ],
            )));
  }
}