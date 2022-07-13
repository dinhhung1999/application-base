import 'package:flutter/material.dart';

import '../../di/injector.dart';

Navigation navigation = sl.get<Navigation>();

abstract class Navigation {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments});

  Future<dynamic> replaceTo(String routeName, {dynamic arguments});

  Future<dynamic> removeUntil(String routeName, {dynamic arguments});

  void popUntil(String routeName, {dynamic arguments});

  void goBack<T extends Object?>([T? result]);
}

class NavigationImpl extends Navigation {
  @override
  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  @override
  Future<dynamic> replaceTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  @override
  Future<dynamic> removeUntil(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }

  @override
  void goBack<T extends Object?>([T? result]) {
    return navigatorKey.currentState!.pop<T>(result);
  }

  @override
  void popUntil(String routeName, {arguments}) {
    return navigatorKey.currentState!
        .popUntil((route) => route.settings.name == routeName);
  }
}
