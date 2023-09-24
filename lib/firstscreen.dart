import 'package:flutter/material.dart';
import 'package:route_app/course.dart';
import 'package:route_app/coursedata.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route App One"),
      ),
      body: ListView(
        children: [
          CourseWidget(
            image: 'assets/images/Android.jpeg',
            titel: 'ANDROID COURSE',
            courseContent: CourseData.androidContent,
          ),
          CourseWidget(
            image: 'assets/images/IOS.jpeg',
            titel: 'IOS COURSE',
            courseContent: CourseData.iosContent,
          ),
          CourseWidget(
              image: 'assets/images/fullStack.jpeg',
              titel: 'FULL STACK',
              courseContent: CourseData.fullStackContent),
        ],
      ),
    );
  }
}
