import 'package:flutter/material.dart';

class MyCollectionScreen extends StatelessWidget {
  const MyCollectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Collection"),
      ),
      body: Center(
        child: Text('Collection'),
      ),
    );
  }
}
