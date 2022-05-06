import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_base/common/navigation.dart';
import 'router_observer.dart';
import 'themes.dart';

final RouteObserver<PageRoute> routeObserver = MyObserver();


class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: GetIt.instance.get<Navigation>().navigatorKey,
      theme: light(context),
      darkTheme: dark(context),
      navigatorObservers: [routeObserver],
      home: Container(),
    );
  }
}