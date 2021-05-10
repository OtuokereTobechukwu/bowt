import 'package:bowt/screen/register/widget/register_form.dart';
import 'package:bowt/screen/register/widget/register_welcome.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';



class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    // Firebase.initializeApp();
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Build the register page.
              RegisterWelcome(),
              SizedBox(height: 10,),
              Container(
                child: Center(child: Image.asset('assets/images/sign up.png', height: 200, )),
              ),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}




AppBar buildAppBar(BuildContext context){
  return  AppBar(
    backgroundColor: Color(0x9FB8B3E5),
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Rapid : Sign Up',
      style:TextStyle(
        color:Color(0xFF231D84),
      ),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios_sharp,
        color: Colors.white,
      ),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
  );
}