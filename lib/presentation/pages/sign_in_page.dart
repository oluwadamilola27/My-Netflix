

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
        child: Column(
          children: <Widget>[
            _headerWidget(),
            SizedBox(height: 10.0,),
            _formWidget(),
          ],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Row(
      children: <Widget>[
        InkWell(onTap: (){
          Navigator.pop(context);
        },
          child: Icon(Icons.arrow_back),
        ),
        SizedBox(width: 10,),
        Container(
          height: 100,
          child: Image.asset('assets/image/AppNetflix.png'),
        )
      ],
    );
  }


  Widget _formWidget() {
    return Expanded(
   child: SingleChildScrollView(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Container(
           padding: EdgeInsets.symmetric(horizontal: 8.0),
           decoration: BoxDecoration(
             color: Colors.grey[800],
             borderRadius: BorderRadius.all(Radius.circular(5),
             ),
           ),
           child: TextFormField(
             decoration: InputDecoration(
                 labelStyle: TextStyle(fontSize: 14.0,color: Colors.white,),
                 border: InputBorder.none,
                 labelText: 'Email or phone number'
             ),
           ),
         ),
         SizedBox( height: 20.0,),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 8.0),
           decoration: BoxDecoration(
             color: Colors.grey[800],
             borderRadius: BorderRadius.all(Radius.circular(5),
             ),
           ),
           child: TextFormField(
             obscureText: true,
             decoration: InputDecoration(
                 labelStyle: TextStyle(fontSize: 14.0,color: Colors.white,),
                 border: InputBorder.none,
                 labelText: 'Password'
             ),
           ),
         ),
         SizedBox(height: 15,),
         Container(
           alignment: Alignment.center,
           padding: EdgeInsets.symmetric(vertical: 15),
           width: double.maxFinite,
           decoration: BoxDecoration(
               color: Colors.transparent,
               border: Border.all(color: Colors.grey[600],width: 2)
           ),
           child: Text('Sign In'),
         ),
         SizedBox(height: 15,),
         Text('Need Help'),
         SizedBox(height: 15,),
         Text(
           'New to Netflix? Sign up now.',
           style: TextStyle(fontWeight: FontWeight.bold,),
         ),
         SizedBox(height: 25,),
         Text(
           'Sign in is protected by Google reCAPTCHA to ensure you\'re not a bot.Learn more.',
           style: TextStyle(fontSize: 12),
           textAlign: TextAlign.center,
         )
       ],
     ),
   ),
    );
  }
}
