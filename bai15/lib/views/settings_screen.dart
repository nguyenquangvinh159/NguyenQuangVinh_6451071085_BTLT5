import 'package:flutter/material.dart';
import '../widgets/language_dialog.dart';
import '../widgets/logout_dialog.dart';
import 'login_screen.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String selectedLanguage = "English";

  void _changeLanguage() async {
    final result = await showDialog(
      context: context,
      builder: (_) => LanguageDialog(),
    );

    if (result != null) {
      setState(() {
        selectedLanguage = result;
      });
    }
  }

  void _logout() async {
    final confirm = await showDialog(
      context: context,
      builder: (_) => LogoutDialog(),
    );

    if (confirm == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Column(
        children: [
          ListTile(
            title: Text("Change Language"),
            subtitle: Text(selectedLanguage),
            onTap: _changeLanguage,
          ),
          ListTile(
            title: Text("Logout"),
            onTap: _logout,
          ),
        ],
      ),
    );
  }
}