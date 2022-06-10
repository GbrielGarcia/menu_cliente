import 'package:flutter/material.dart';

class PageViewNav with ChangeNotifier {

  int _currentPage = 0;


  int get currentPage => _currentPage;

  set currentPage(int index) {
    _currentPage = index;
    notifyListeners();
  }


  changePage(int index) {
    _currentPage = index;
    notifyListeners();
  }
}