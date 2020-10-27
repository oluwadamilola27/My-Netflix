import 'package:flutter/material.dart';
import 'package:mynetflix_app/presentation/widgets/theme/custom_theme.dart';

import 'presentation/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'MyNetflix',
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
