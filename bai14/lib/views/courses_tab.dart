import 'package:flutter/material.dart';
import '../models/course.dart';
import '../widgets/course_item.dart';

class CoursesTab extends StatelessWidget {
  final List<Course> courses = [
    Course(title: "Flutter Basic", description: "Learn Flutter"),
    Course(title: "C# Advanced", description: "Deep dive C#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: courses.length,
      itemBuilder: (_, index) {
        return CourseItem(course: courses[index]);
      },
    );
  }
}