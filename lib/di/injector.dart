import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_base/di/initialize_dependencies.dart';

import '../common/configs/build_config.dart';

final sl = GetIt.instance;

Future init() async {
  await initEnv();
  await initializeDependencies();
}

Future initEnv() async {
  /// [Flavor]
  final flavor =
      await const MethodChannel('flavor').invokeMethod<String>('getFlavor');
  if (flavor == 'production') {
    sl.registerLazySingleton<BuildConfigs>(
            () => BuildConfigs(Environment.prod));
  } else {
    sl.registerLazySingleton<BuildConfigs>(
            () => BuildConfigs(Environment.dev));
  }
}
