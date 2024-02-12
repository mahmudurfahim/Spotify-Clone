import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text('Library', style: TextStyle(fontSize: 40, color: Colors.yellow)));
  }
}