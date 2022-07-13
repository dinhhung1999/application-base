import 'package:mobile_base/common/navigator/navigation.dart';
import 'package:mobile_base/data/datasource/local/local_service.dart';
import 'package:mobile_base/di/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/configs/build_config.dart';
import '../common/networking/interceptor/auth_interceptor.dart';
import '../common/networking/interceptor/logger_interceptor.dart';
import '../common/networking/rest_client.dart';


Future initializeDependencies() async {

  /// [Shared]
  sl.registerSingleton(await SharedPreferences.getInstance());

  /// [LocalService]
  sl.registerSingleton(LocalService());

  /// [RestClient]
  sl.registerLazySingleton(
          () => RestClient(sl<BuildConfigs>().url(), interceptors: [
            LoggerInterceptor(),
        AuthInterceptor(),
      ]));

  /// [Navigation]
  sl.registerLazySingleton<Navigation>(() => NavigationImpl());




}