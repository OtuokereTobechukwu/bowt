import 'package:bowt/screen/home/home_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 5);
    Future.delayed(d,(){
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (BuildContext context){
                return HomeScreen();
              },
          ),
              (route) => false
      );
    });

    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/launch_image.png'),
                ),
          ),
          SizedBox(height: 150,),
          CircularProgressIndicator(
            backgroundColor: Colors.deepPurpleAccent,
          ),
          // SizedBox(height: 50),
          // Text(
          //     'Rapid',
          //   style: TextStyle(
          //       fontSize: 40,
          //       color: Colors.white,
          //     fontWeight: FontWeight.w500,
          //   ),
          // ),
        ],
      ),
      );
  }
}
