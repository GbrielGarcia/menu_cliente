import 'package:flutter/material.dart';
import 'package:frutasvideo/src/screens/home_screen.dart';
import 'package:frutasvideo/src/screens/info_screen.dart';
import 'package:frutasvideo/src/screens/player_screen.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  static const List<Widget> _pages = <Widget>[
    PlayerScreen(),
    InfosScreen(),
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Home._pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Informacion',
          ),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
