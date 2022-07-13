import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_base/di/injector.dart' as di;
import 'dart:developer' as developer;
import 'application.dart';

Future<void> main() async {
  ///[cache some errors]
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (!kReleaseMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    }
  };

  ///[run app]
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await di.init();
    await Future.delayed(
      const Duration(seconds: 1),
    );
    disableErrorWidget();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((_) {
      runApp(MultiBlocProvider(
        providers: [
          //TODO
        ],
        child: const Application(),
      ));
    });

    ///[console] flavor running hidden when release mode
    if (!kReleaseMode) {}
  }, (error, stackTrace) {
    if(kDebugMode){
      developer.log('$error', name: '❎ ERROR OTHER   :');
      developer.log('$stackTrace', name: '❎ STACKTRACE    :');
    }
    // TODO FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

/// [disable error] widget when [release mode]
void disableErrorWidget() {
  if (kReleaseMode) {
    ErrorWidget.builder = (details) {
      return const Center(
        child: Text('Something wrong, Please chek your debug console'),
      );
    };
  }
}
