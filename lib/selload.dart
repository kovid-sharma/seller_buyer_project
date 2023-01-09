import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class sellload extends StatefulWidget {
  const sellload({Key? key}) : super(key: key);

  @override
  State<sellload> createState() => _sellloadState();
}

class _sellloadState extends State<sellload> {
  @override
  Widget build(BuildContext context) {
    String VidecurrUrl = '';
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
            Expanded(
                flex: 1,
                child: Container(

            )),
            SizedBox(
              height: 40,
            ),
           Expanded(
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
               ],
             ),
           )



 ]
        ),
      ),
    floatingActionButton: SpeedDial(
      buttonSize: const Size(56,56
      ),
    childMargin: EdgeInsets.all(10),
    icon: Icons.add,
    backgroundColor: Colors.red,
    children: [
    SpeedDialChild(
    child: const Icon(Icons.stop_circle,
    color: Colors.red,
    size: 25,),
    label: 'VideoCamera',
    backgroundColor: Colors.black,
    onTap: () async {
        final ImagePicker _picker = ImagePicker();
        final XFile? video = await _picker.pickVideo(source: ImageSource.camera);
        if(video==null)return;
        String curr= DateTime.now().millisecondsSinceEpoch.toString();
        Reference refroot= FirebaseStorage.instance.ref();//this is the firebase storage
        Reference refchild= refroot.child('allVideos');
        Reference currVideo= refchild.child(curr);
        currVideo.putFile(File(video!.path));
    },
    ),
    SpeedDialChild(
    child: const Icon(Icons.storage_outlined,
  color: Colors.red,
    size: 25,
    ),
    label: 'Storage',
    backgroundColor: Colors.black,
    onTap: ()
      async {
        final ImagePicker _picker = ImagePicker();
        final XFile? image = await _picker.pickVideo(source: ImageSource.gallery);
        if(image==null)return;
        String curr= DateTime.now().millisecondsSinceEpoch.toString();
        Reference refroot= FirebaseStorage.instance.ref();//this is the firebase storage
        Reference refchild= refroot.child('allVideos');
        Reference currVideo= refchild.child(curr);
        try {
          await currVideo.putFile(File(image!.path));

          VidecurrUrl= await currVideo.getDownloadURL();
        }
        catch(e)
        {

        }
      },
    ),
    ],
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


