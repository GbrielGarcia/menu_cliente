import 'package:flutter/material.dart';
import 'package:frutasvideo/app.dart';
import 'package:frutasvideo/src/providers/favourites_provider.dart';
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

        ChangeNotifierProvider(create: (_) => FavouritesProvider())
      ],
      child: const MyApp(),
    );
  }
}