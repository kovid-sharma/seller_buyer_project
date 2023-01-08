


import 'package:flutter/material.dart';
import 'package:seller_buyer_project/buylog.dart';
import 'package:seller_buyer_project/buyview.dart';
import 'package:seller_buyer_project/selload.dart';
import 'package:seller_buyer_project/sellog.dart';
import 'choose.dart';
import 'details.dart';

void main()
{
  runApp(MaterialApp(
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

  ));
}