import 'package:flutter/material.dart';

class buyview extends StatefulWidget {
  const buyview({Key? key}) : super(key: key);

  @override
  State<buyview> createState() => _buyviewState();
}

class _buyviewState extends State<buyview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Left Brain'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

    );
  }
}
