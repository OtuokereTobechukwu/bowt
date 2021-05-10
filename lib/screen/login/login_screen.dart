
import 'package:bowt/constant.dart';
import 'package:bowt/screen/login/widget/login_form.dart';
import 'package:bowt/screen/login/widget/welcome_back.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Center(child: Image.asset('assets/images/travel.png', height: 250,)),
                ),
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
    backgroundColor: mBackgroundColor,
    elevation: 0,
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

