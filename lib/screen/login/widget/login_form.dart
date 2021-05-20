import 'package:bowt/screen/catalog/catalog_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

// import 'input_text_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String email;
  String password;
  bool isVisible = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // checkAuthentification() async{
  //   _auth.
  // }

  // final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          //This is there so that we can make validation of user inputs
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
           decoration: InputDecoration( labelText: 'Email', labelStyle: TextStyle(color: Color(
               0xff2d2ddc))),
            onChanged: (value){
            //      we make it a controlled text field by saving the latest current value into the local state called name
              setState(() {
                email = value;
              });
            },
              validator: (value){
                //Just a basic check to make sure the user does not submit empty values
                if(value.length<1){
                  return 'Please enter a valid value';
                }else{
                  return null;
                }
              }
          ),
          SizedBox(height: 10,),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration( labelText: 'Password', labelStyle: TextStyle(color: Color(0xffb1aeae)), suffixIcon: IconButton(onPressed: (){setState(() {
              isVisible = !isVisible;
            });}, icon: Icon(isVisible? Icons.visibility: Icons.visibility_off, color: Color(0xffb1aeae)),)),
            obscureText: !isVisible,
            onChanged: (value){
              //      we make it a controlled text field by saving the latest current value into the local state called name
              setState(() {
                password = value;
              });
            },
            validator: (value){
              if(value.length<1){
                return 'Please enter a valid value';
              }else{
                return null;
              }
            }),
          SizedBox(height: 30,),
          Container(

            padding: const EdgeInsets.symmetric(
              // vertical: 20,
              horizontal: 30,
            ),
            child:ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )
                    )
                ),
                onPressed: (){
                  // Firebase implementation
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return CatalogScreen();
                        },
                      )
                  );
                },
                child: Container(
                  // width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.center,
                  // color: mPrimaryColor,
                  child: Text('Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                )
            ),

          )
        ],
      ),
    );
  }
}
