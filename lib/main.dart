



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seller_buyer_project/buylog.dart';
import 'package:seller_buyer_project/buyview.dart';
import 'package:seller_buyer_project/selload.dart';
import 'package:seller_buyer_project/sellog.dart';
import 'choose.dart';
import 'details.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(

    debugShowCheckedModeBanner: false,
    initialRoute: 'chse',
    routes: {
        'chse': (context) => choose(),
        'seog': (context) => sellog(),
        'buog': (context) => buylog(),
        'sead': (context) => sellload(),
        'buew': (context) => buyview(),
        'details':(context)=>details(),

    },

  ),
      );
}