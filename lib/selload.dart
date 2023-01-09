import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class sellload extends StatefulWidget {
  const sellload({Key? key}) : super(key: key);

  @override
  State<sellload> createState() => _sellloadState();
}

class _sellloadState extends State<sellload> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controllerName = TextEditingController();
    TextEditingController _controllerQuantity = TextEditingController();

    GlobalKey<FormState> key = GlobalKey();

    CollectionReference _reference =
    FirebaseFirestore.instance.collection('shopping_list');

    String imageUrl = '';
    return Scaffold(
      appBar: AppBar(
        title: Text('Left Brain'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Form(
        key: key,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(

                height: 150,
                child: Image.asset('assets/lb-logo-4.jpg',

                  width: double.infinity,
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(

              )),
              SizedBox(
                height: 20,
              ),
             Expanded(
               child: Column(
                 children: [
                   TextFormField(
                     controller: _controllerName,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),

                   hintText: 'Enter the name of the product',
                   ),
                       validator: (String? value) {
                         if (value == null || value.isEmpty) {
                           return 'Please enter the item name';
                         }

                         return null;
                       }
    ),
                   SizedBox(
                   height: 20,
                   ),
                   TextFormField(
                     controller: _controllerQuantity,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       hintText: 'Enter the quantity of the product',
                   ),
                       validator: (String? value) {
                         if (value == null || value.isEmpty) {
                           return 'Please enter the item quantity';
                         }

                         return null;
                       }
                   ),
                    SizedBox(
                      height: 40,
                    ),




                   IconButton(
                       onPressed: () async {
                         /*
                * Step 1. Pick/Capture an image   (image_picker)
                * Step 2. Upload the image to Firebase storage
                * Step 3. Get the URL of the uploaded image
                * Step 4. Store the image URL inside the corresponding
                *         document of the database.
                * Step 5. Display the image on the list
                *
                * */

                         /*Step 1:Pick image*/
                         //Install image_picker
                         //Import the corresponding library

                         ImagePicker imagePicker = ImagePicker();
                         XFile? file =
                         await imagePicker.pickImage(source: ImageSource.gallery);

                         if (file == null) return;
                         //Import dart:core
                         String uniqueFileName =
                         DateTime.now().millisecondsSinceEpoch.toString();

                         /*Step 2: Upload to Firebase storage*/
                         //Install firebase_storage
                         //Import the library

                         //Get a reference to storage root
                         Reference referenceRoot = FirebaseStorage.instance.ref();
                         Reference referenceDirImages =
                         referenceRoot.child('images');

                         //Create a reference for the image to be stored
                         Reference referenceImageToUpload =
                         referenceDirImages.child(uniqueFileName);

                         //Handle errors/success
                         try {
                           //Store the file
                           await referenceImageToUpload.putFile(File(file!.path));
                           //Success: get the download URL
                           imageUrl = await referenceImageToUpload.getDownloadURL();
                         } catch (error) {
                           //Some error occurred
                         }
                       },
                       icon: Icon(Icons.stop_circle)),
                   ElevatedButton(
                       onPressed: () async {
                         if (imageUrl.isEmpty) {
                           ScaffoldMessenger.of(context)
                               .showSnackBar(SnackBar(content: Text('Please upload an image')));

                           return;
                         }

                         if (key.currentState!.validate()) {
                           String itemName = _controllerName.text;
                           String itemQuantity = _controllerQuantity.text;

                           //Create a Map of data

                           //Add a new item

                           ScaffoldMessenger.of(context)
                               .showSnackBar(SnackBar(content: Text('Succesful upload')));

                           createUser(imageUrl);
                         }
                       },
                       child: Text('Submit'))
                 ],
               ),
             )



 ]
          ),
        ),
      ),
    );
  }
}

Future createUser(String imageUrl) async{
  final docuser= FirebaseFirestore.instance.collection('allvid').doc();

  final json={
    'url': imageUrl,
  };

  await docuser.set(json);
}
