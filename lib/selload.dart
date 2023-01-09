import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
           Expanded(
             flex: 9,
             child: Column(
               children: [
                 TextFormField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                 hintText: 'Enter the name of the product',
                 ),
    ),
                 SizedBox(
                 height: 20,
                 ),
                 TextFormField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     hintText: 'Enter the quantity of the product',
                 ),
                 ),
                  SizedBox(
                    height: 40,
                  ),
                 FloatingActionButton(
                   onPressed: ()
                   {

                   },
                   backgroundColor: Colors.greenAccent.shade700,
                   child: Text('+',
                   style: TextStyle(
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                 ),
               ],
             ),
           )



 ]
        ),
      ),
    );
  }
}


