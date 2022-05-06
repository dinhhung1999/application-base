import 'dart:convert';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalService {
  final String kKeyAuth = 'key_auth';

  //NOTE: List key not delete when user logout
  final List<String> keyExcludes = [];

  final SharedPreferences sharedPreferences = GetIt.instance.get();

  bool isAuthorized() {
    return sharedPreferences.containsKey(kKeyAuth);
  }


  Future clear() async {
    final keys = sharedPreferences.getKeys();
    keys.removeAll(keyExcludes);
    for (final key in keys) {
      await sharedPreferences.remove(key);
    }
  }
}