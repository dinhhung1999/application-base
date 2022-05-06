import 'package:flutter/material.dart';

class Navigation {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  bool closing = false;

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {

    return navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }


  Future<dynamic> pushNamedAndRemoveUntil(String routeName, RoutePredicate predicate,{Object? arguments} ) {

    return navigatorKey.currentState!.pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> push(Widget widget, {bool visible = true}) {
    return navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }


  void pop({dynamic result}) {
    navigatorKey.currentState!.pop(result);
  }

  void popUntil(String nameRoute) {
    Navigator.popUntil(navigatorKey.currentContext!, (Route<dynamic> route){
      bool shouldPop = false;
      if(route.settings.name == nameRoute){
        shouldPop = true;
      }
      return shouldPop;
    });
  }
}
