import 'package:bowt/screen/catalog/catalog_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bowt/constant.dart';
// import 'package:bowt/'

class CatalogScreen extends StatefulWidget {
  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}
class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CatalogHome(),
    );
  }
}
AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Color(0x9F3C2EE5),
    elevation: 0,
    centerTitle: true,
    // title: Text(
    //   'Hi, $user',
    //   style:TextStyle(
    //     color:Color(0xFF231D84),
    //   ),
    // ),
    leading: IconButton(
      icon: Icon(
        Icons.list,
        color: Colors.white,
      ),
      onPressed: () {
        // Navigator.pop(context);
      },
    ),
  );
}