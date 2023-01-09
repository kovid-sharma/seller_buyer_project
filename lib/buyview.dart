import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
