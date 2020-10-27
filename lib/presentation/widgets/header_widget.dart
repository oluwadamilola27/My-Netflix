import 'package:flutter/material.dart';
import 'package:mynetflix_app/presentation/pages/sign_in_page.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            child: Image.asset('assets/image/myNetflixLogo.jpg'),
          ),
          Row(
            children: <Widget>[
              Text('PRIVACY'),
              SizedBox(width: 10.0,),
              Text('HELP'),
              SizedBox(width: 10.0,),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => SignInPage(),
                ));
              },child:Text('SIGN IN'),),
              SizedBox(width: 10.0,),
            ],
          ),
        ],
      ),
    );
  }
}







