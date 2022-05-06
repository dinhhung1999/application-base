import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_base/common/navigation.dart';
import 'package:mobile_base/data/datasource/local/local_service.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future initializeDependencies() async {
  Dio dio = Dio(BaseOptions(baseUrl: 'baseURL'));

  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  GetIt.instance.registerSingleton(dio);

  GetIt.instance.registerLazySingleton(() => Navigation());

  GetIt.instance.registerSingleton(await SharedPreferences.getInstance());

  GetIt.instance.registerSingleton(LocalService());



}