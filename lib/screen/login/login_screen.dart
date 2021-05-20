
import 'package:bowt/constant.dart';
import 'package:bowt/screen/login/widget/login_form.dart';
import 'package:bowt/screen/login/widget/welcome_back.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             WelcomeBack(),
              LoginForm(),
              Container(
                padding: const EdgeInsets.symmetric(
                  // vertical: 20,
                  horizontal: 20,
                ),
                alignment: Alignment.centerRight,
                child: Center(
                  child: Text(
                      'Forgot password?',
                    style: TextStyle(color: mPrimaryColor),),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(
                  // vertical: 20,
                  horizontal: 5,
                ),
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(style: TextStyle(color: Colors.grey), children: [
                    TextSpan(text: 'Don\'t have an account?  '),
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        color: mPrimaryColor,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.pop(context);
                      },
                    )
                  ]),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(child: SvgPicture.asset(
                  'assets/images/travel.svg',
                  height: 200,),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context){
  return  AppBar(
    backgroundColor: Colors.white,
    // elevation: 5,
    centerTitle: true,
    title: Text(
      'Rapid',
      style:TextStyle(
        color:mPrimaryTextColor,
      ),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios_sharp,
        color: mPrimaryTextColor,
      ),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
  );
}

