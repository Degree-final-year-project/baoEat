import 'package:flutter/material.dart';

class MyEditInfoScreen extends StatelessWidget {
  static final String routeName = "/edit-profile";
  const MyEditInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Container(
        child: Text("Edit"),
      ),
    );
  }
}
