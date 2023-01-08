import 'package:flutter/material.dart';
class sellog extends StatefulWidget {
  const sellog({Key? key}) : super(key: key);

  @override
  State<sellog> createState() => _sellogState();
}

class _sellogState extends State<sellog> {
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
