import 'package:flutter/material.dart';

class LogoutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirm"),
      content: Text("Bạn có chắc muốn đăng xuất?"),
      actions: [
        TextButton(
          child: Text("No"),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        TextButton(
          child: Text("Yes"),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ],
    );
  }
}