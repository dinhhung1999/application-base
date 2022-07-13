import 'package:flutter/material.dart';
import 'package:mobile_base/common/navigator/navigation.dart';
import 'package:mobile_base/presentation/home/home_page.dart';
import 'utils/router_observer.dart';
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
      theme: light(context),
      darkTheme: dark(context),
      navigatorObservers: [routeObserver],
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      navigatorKey: navigation.navigatorKey,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomePage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      }
    );
  }
}