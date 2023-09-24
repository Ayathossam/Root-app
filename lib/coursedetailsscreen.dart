import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  String image;
  String courseContent;

  CourseDetailsScreen({required this.image, required this.courseContent});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/Bg.jpg'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Container(margin: EdgeInsets.all(8), child: Image.asset(image)),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                child: SingleChildScrollView(
                    child: Text(
                  courseContent,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
