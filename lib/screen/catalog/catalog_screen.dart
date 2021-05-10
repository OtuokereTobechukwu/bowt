import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CatalogScreen extends StatefulWidget {
  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final _auth = FirebaseAuth.instance;
  User loggedInUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try{
    final user = _auth.currentUser;
    if (user != null){
      loggedInUser = user;
      print(loggedInUser.email);
    }}
    catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("This is where i display boats"),
    );
  }
}
