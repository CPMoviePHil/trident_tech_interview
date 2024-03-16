import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt injector = GetIt.instance;

abstract class DependencyInjection {

  static Future<void> sharePrefsInject() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    injector.registerSingleton<SharedPreferences>(sharedPreferences);
  }
}
