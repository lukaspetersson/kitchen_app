import 'package:flutter/material.dart';
import 'package:kitchen_app/pages/settingsPages/AddItemPage.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return AddItemPage();
          },
        )),
        child: Text('Add item'),
      ),
    ));
  }
}
