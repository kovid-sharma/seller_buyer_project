import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';
class sellload extends StatefulWidget {
  const sellload({Key? key}) : super(key: key);

  @override
  State<sellload> createState() => _sellloadState();
}

class _sellloadState extends State<sellload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Left Brain'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(child:
            Text('Upload Files for selling',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),)
          ),
          Expanded(
          flex: 8,
          child: Container(

      ),
    ),
          Expanded(
            flex: 8,
            child: Container(

          ),
          ),

          FloatingActionButton(
          onPressed: ()
      {

      },
      backgroundColor: Colors.greenAccent,
            child: Text('+',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Expanded(

              flex: 1,
              child: Container(

              )
          ),
        ],


        ),
    );
  }
}
