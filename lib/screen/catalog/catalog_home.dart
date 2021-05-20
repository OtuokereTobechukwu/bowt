import 'package:bowt/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/header_with_searchbox.dart';

class CatalogHome extends StatefulWidget {
  @override
  _CatalogHomeState createState() => _CatalogHomeState();
}

class _CatalogHomeState extends State<CatalogHome> {
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
        // print(loggedInUser.email);
      }}
    catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    // Provide total height and width of screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          Row(
            children: <Widget>[
              TitleWithCustomUnderline(
                text: 'Choose a terminal',
              ),
              Container(
                width: size.width * 0.4,
                child: Column(
                  children: <Widget>[

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key, this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
                text,
              style: TextStyle(
                color: Color(0x9F3C2EE5),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: Color(0x9F3C2EE5).withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

