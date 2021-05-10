import 'package:bowt/screen/catalog/catalog_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  // String firstName ='';
  // String lastName = '';
  final _auth = FirebaseAuth.instance;
  String email ='';
  String password = '';
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 40,
      ),
      child: Column(
        children: <Widget>[
          //This is there so that we can make validation of user inputs
          SizedBox(height: 30,),

          // Email field
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              // textAlign: TextAlign.center,
              decoration: InputDecoration( labelText: 'Email', labelStyle: TextStyle(color: Colors.grey)),
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
          SizedBox(height: 20,),

          // Password field
          TextFormField(
              // textAlign: TextAlign.center,
              decoration: InputDecoration( labelText: 'Password', labelStyle: TextStyle(color: Colors.grey), suffixIcon: IconButton(onPressed: (){setState(() {
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
                onPressed: () async{
                  // Firebase implementation
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context){
                              return CatalogScreen();
                            },
                          )
                      );
                    }
                  }
                  catch(e){
                    print(e);
                  }
                },
                child: Container(
                  // width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.center,
                  // color: mPrimaryColor,
                  child: Text('Register',
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
