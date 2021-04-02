import 'package:flutter/material.dart';

class TabbarManagerProvide with ChangeNotifier {
  int tabbarIndex = 0;

  changeIndex(int newIndex) {
    tabbarIndex = newIndex;
    notifyListeners();
  }
}