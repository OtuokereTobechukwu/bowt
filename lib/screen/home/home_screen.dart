import 'package:bowt/constant.dart';
import 'package:bowt/screen/home/widget/login_and_register.dart';
import 'package:bowt/screen/home/widget/slider_dot.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                Image.asset('assets/images/boatime.png', height: 250,),
                SliderDot(),
                SizedBox(height: 30,),
                Text(
                  '...who cares about roads?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: mPrimaryTextColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 40,),
                LoginAndRegister(),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      )
    );
  }
}

