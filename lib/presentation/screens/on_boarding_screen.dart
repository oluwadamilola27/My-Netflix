

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynetflix_app/domin/entitles/on_boarding_entity.dart';
import 'package:mynetflix_app/presentation/widgets/header_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final _onBoardingData=OnBoardingEntity.onBoardingData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _pageViewBuilderWidget
          HeaderWidget(),
        ],
      ),
    );
  }

}

 Widget _pageViewBuilderWidget () {
  return PageView.builder(
    itemBuilder: (ctx,index){
      return Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          index==3?Container(
            height: double.infinity,
            child:Image.asset('assets/image/NetflixBackground.jpg',fit: BoxFit.cover,) ,
          ): Container(
            margin: EdgeInsets.only(bottom: 40),
            child:Image.asset('assets/image/NetflixBackground.jpg',) ,
          ),
          index==3?Container():Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors:
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 230,left: 40,right: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '3,2,1......Download',
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Text(
                  'Always have something to watch offline',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ]
            ),
          )
        ],
      );
    },
  );
}
