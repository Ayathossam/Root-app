import 'package:flutter/material.dart';
import 'package:route_app/coursedetailsscreen.dart';

class CourseWidget extends StatelessWidget {
  String image;
  String titel;
  String courseContent;

  CourseWidget(
      {required this.image, required this.titel, required this.courseContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CourseDetailsScreen(
                            image: image, courseContent: courseContent)),
                  );
                },
                child: Text(titel)),
          ),
        ],
      ),
    );
  }
}
