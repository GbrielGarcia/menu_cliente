import 'package:flutter/material.dart';

class CustomNaviBar extends StatelessWidget {
  const CustomNaviBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (index) {
          if (index != 0) return;
          Navigator.pop(context);
        },
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(label: '', icon: Icon(Icons.arrow_back_ios)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.menu)),
        ]);
  }
}
