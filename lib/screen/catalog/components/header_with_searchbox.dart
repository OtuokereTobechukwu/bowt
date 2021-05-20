import 'package:flutter/material.dart';

import '../../../constant.dart';
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // Cover 20% of the total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                bottom: 36 + kDefaultPadding,
                left: kDefaultPadding,
                right: kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: Color(0x9F3C2EE5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi, Traveller!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/launch_image.png'),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0x9F3C2EE5).withOpacity(0.23),
                    ),
                  ],
                ),
                child: TextField(
                  onChanged: (value){},
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                        color: Color(0x9F3C2EE5).withOpacity(0.5)
                    ) ,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Color(0x9F3C2EE5),
                      ),
                      onPressed: (){
                        // Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
