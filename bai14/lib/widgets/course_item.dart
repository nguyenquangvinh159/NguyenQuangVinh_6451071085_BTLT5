import 'package:flutter/material.dart';
import '../models/course.dart';
import '../utils/routes.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  CourseItem({required this.course});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(course.title),
      subtitle: Text(course.description),
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.courseDetail,
          arguments: course,
        );
      },
    );
  }
}