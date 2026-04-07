import 'package:flutter/material.dart';
import 'courses_tab.dart';
import 'my_learning_tab.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Online Learning"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Courses"),
              Tab(text: "My Learning"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CoursesTab(),
            MyLearningTab(),
          ],
        ),
      ),
    );
  }
}