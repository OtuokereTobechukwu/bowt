import 'package:flutter/material.dart';

// import '../../../constant.dart';

class RegisterWelcome extends StatelessWidget {
  const RegisterWelcome({
    Key key,
  }) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal:30, vertical: 20),
      child: Center(
        child: Text(
          '... no more late-coming!',
          style: TextStyle(
            color: Color(0xFF231D84),
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),

      ),
    );
  }
}



