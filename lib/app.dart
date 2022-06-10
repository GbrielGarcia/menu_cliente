import 'package:flutter/material.dart';
import 'package:frutasvideo/src/screens/home_screen.dart';
import 'package:frutasvideo/src/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // onGenerateRoute: MyRoutes.generateRoute,
      home: SplashScreen(),
    );
  }
}
