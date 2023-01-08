import 'package:flutter/material.dart';

class buylog extends StatefulWidget {
  const buylog({Key? key}) : super(key: key);

  @override
  State<buylog> createState() => _buylogState();
}

class _buylogState extends State<buylog> {
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
