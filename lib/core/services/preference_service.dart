import 'package:sample_project/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  static final PreferencesService _instance = PreferencesService._internal();
  late final SharedPreferences _prefs;

  PreferencesService._internal();

  static PreferencesService get instance => _instance;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String? getTheme() => _prefs.getString(AppConstant.themeKey);

  Future<void> setTheme(String value) async {
    await _prefs.setString(AppConstant.themeKey, value);
  }

  Future<void> deleteTheme() async {
    await _prefs.remove(AppConstant.themeKey);
  }
}
