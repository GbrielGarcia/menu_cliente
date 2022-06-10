import 'package:flutter/material.dart';
import 'package:frutasvideo/src/screen/splash.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // onGenerateRoute: MyRoutes.generateRoute,
      home: Splash(),
    );
  }
}
