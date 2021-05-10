import 'package:flutter/material.dart';
// import 'login_form.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  LoginButton({@required this.formKey});


  @override
  Widget build(BuildContext context) {
    return Container(
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
            // print();
        if(formKey.currentState.validate()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration:Duration(milliseconds: 500),content: Text('verified successfully',style: TextStyle(color: Colors.white, fontSize: 16.0))));
          formKey.currentState.save();
        } else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration:Duration(milliseconds: 500),content: Text('verification failed', style: TextStyle(color: Colors.white, fontSize: 16.0),) , backgroundColor: Colors.red,));
        }

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
    );
  }
}
