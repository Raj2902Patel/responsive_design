import 'package:flutter/material.dart';

class Menu extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKay => _globalKey;

  void controlMenu() {
    if (!_globalKey.currentState!.isDrawerOpen) {
      _globalKey.currentState!.openDrawer();
    }
  }
}
