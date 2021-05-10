import 'package:bowt/screen/login/login_screen.dart';
import 'package:bowt/screen/register/register_screen.dart';
import 'package:flutter/material.dart';

class LoginAndRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return RegisterScreen();
                        },
                      )
                  );
                },
                child: Container(
                  width: double.infinity,
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
          ),

          SizedBox(width: 20,),

          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shadowColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
              ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                      },
                    )
                   );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.center,
                  // color: mPrimaryColor,
                  child: Text('Login',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
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

