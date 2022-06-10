import 'package:flutter/material.dart';
import 'package:frutasvideo/app.dart';
import 'package:frutasvideo/src/home/home.dart';
import 'package:frutasvideo/src/provider/provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyMain());
}

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_) => PageViewNav(), lazy: false),
      ],
      child: const MyApp(),
    );
  }
}