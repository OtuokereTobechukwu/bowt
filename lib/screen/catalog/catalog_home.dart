import 'dart:ui';

import 'package:bowt/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../locations.dart';
import 'components/header_with_searchbox.dart';

class CatalogHome extends StatefulWidget {
  @override
  _CatalogHomeState createState() => _CatalogHomeState();
}

class _CatalogHomeState extends State<CatalogHome> {
  final _auth = FirebaseAuth.instance;
  User loggedInUser;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // getCurrentUser();
  // }

  // void getCurrentUser() {
  //   try{
  //     final user = _auth.currentUser;
  //     if (user != null){
  //       loggedInUser = user;
  //       // print(loggedInUser.email);
  //     }}
  //   catch(e){
  //     print(e);
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    // Provide total height and width of screen
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HeaderWithSearchBox(size: size),
        Row(
          children: <Widget>[
            TitleWithCustomUnderline(
              text: 'Choose a terminal',
            ),
          ],
        ),
        // // Implement the gridview for terminals
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
              itemCount: locations.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                ),
                itemBuilder: (context, index) => LocationCard(location: locations[index],),
            ),
          ),
        )
      ],
    );
  }
}

class LocationCard extends StatelessWidget {
  final Location location;
  final Function press;
  const LocationCard({
    Key key, this.location, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      height: 180,
      width: 160,
      decoration: BoxDecoration(
        color: mCardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(location.image),
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
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     margin: EdgeInsets.only(right: kDefaultPadding / 4),
          //     height: 7,
          //     color: Color(0x9F3C2EE5).withOpacity(0.2),
          //   ),
          // )
        ],
      ),
    );
  }
}

