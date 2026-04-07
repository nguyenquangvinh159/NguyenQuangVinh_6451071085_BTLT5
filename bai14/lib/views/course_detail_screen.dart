import 'package:flutter/material.dart';
import '../models/course.dart';

class CourseDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Course course =
    ModalRoute.of(context)!.settings.arguments as Course;

    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: PageView(
        children: [
          _buildPage("Overview", course.description),
          _buildPage("Lessons", "List of lessons here"),
          _buildPage("Reviews", "User reviews here"),
        ],
      ),
    );
  }

  Widget _buildPage(String title, String content) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 24)),
          SizedBox(height: 10),
          Text(content),
        ],
      ),
    );
  }
}