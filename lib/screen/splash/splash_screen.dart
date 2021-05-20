import 'package:bowt/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
        children: <Widget>[
          SizedBox(height: 150,),
        Center(
          child: SvgPicture.asset(
              'assets/images/boat.svg',
          height: 150,),
        // child: CircleAvatar(
        //   radius: 100,
        //   backgroundImage: AssetImage('assets/images/launch_image.png'),
        //     ),
        ),
        SizedBox(height: 80,),
        Text(
          'Rapid',
        style: TextStyle(
            fontSize: 45,
            color: Colors.white,
          fontWeight: FontWeight.w500,
          letterSpacing: 2,
        ),
        ),
          SizedBox(height: 70),
          CircularProgressIndicator(
            backgroundColor: Colors.deepPurpleAccent,
          ),
        ],
      ),
      ),
      );
  }
}

