import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier{
  final gSign= GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user=> _user!;

  Future googleLogin() async{
    final select= await gSign.signIn();
    if(select==null)
      {return;}
        _user=select;
    final auth= await select.authentication;

    final credential= GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);

    notifyListeners();
  }
}