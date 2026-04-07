import 'package:flutter/material.dart';

class LanguageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text("Choose Language"),
      children: [
        SimpleDialogOption(
          child: Text("English"),
          onPressed: () {
            Navigator.pop(context, "English");
          },
        ),
        SimpleDialogOption(
          child: Text("Vietnamese"),
          onPressed: () {
            Navigator.pop(context, "Vietnamese");
          },
        ),
      ],
    );
  }
}