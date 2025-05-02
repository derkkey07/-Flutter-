import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_profile.dart';
import '../models/fortune.dart';
import '../services/fortune_calculator.dart';
import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  UserProfile? _userProfile;
  DateTime? _lastOpenedDate;
  bool _canOpenApp = true;
  bool _hasPremiumAccess = false;
  bool _hasSeenTutorial = false;
  DailyFortune? _dailyFortune;
  final SharedPreferences _prefs;

  UserProvider(this._prefs) {
    _loadProfile();
    _updateDailyFortune();
  }

  UserProfile? get userProfile => _userProfile;
  DateTime? get lastOpenedDate => _lastOpenedDate;
  bool get canOpenApp => _canOpenApp;
  bool get hasPremiumAccess => _hasPremiumAccess;
  bool get hasSeenTutorial => _hasSeenTutorial;

  Future<void> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    _hasSeenTutorial = prefs.getBool('hasSeenTutorial') ?? false;
    _hasPremiumAccess =
        kDebugMode ? true : (prefs.getBool('hasPremiumAccess') ?? false);

    final lastOpenDateString = prefs.getString('lastOpenDate');
    if (lastOpenDateString != null) {
      _lastOpenedDate = DateTime.parse(lastOpenDateString);
      final now = DateTime.now();
      _canOpenApp = !isSameDay(_lastOpenedDate!, now);
    }

    final name = prefs.getString('userName');
    final birthDateStr = prefs.getString('birthDate');
    final guardianSpirit = prefs.getString('guardianSpirit');
    final nahuatl = prefs.getString('nahuatl');

    if (name != null && birthDateStr != null) {
      _userProfile = UserProfile(
        name: name,
        birthDate: DateTime.parse(birthDateStr),
        guardianSpirit: guardianSpirit ?? '',
        nahuatl: nahuatl ?? '',
      );
    }
    notifyListeners();
  }

  Future<void> updateLastOpenedDate() async {
    final prefs = await SharedPreferences.getInstance();
    final now = DateTime.now();
    await prefs.setString('lastOpenedDate', now.toIso8601String());
    _lastOpenedDate = now;
    _canOpenApp = false;
    notifyListeners();
  }

  UserProfile? get profile => _userProfile;
  DailyFortune? get dailyFortune => _dailyFortune;
  bool get isProfileSet => _userProfile != null;

  Future<void> _loadProfile() async {
    final profileJson = _prefs.getString('user_profile');
    if (profileJson != null) {
      _userProfile = UserProfile.fromJson(json.decode(profileJson));
      notifyListeners();
    }
  }

  Future<void> saveProfile(UserProfile profile) async {
    _userProfile = profile;
    await _prefs.setString('user_profile', json.encode(profile.toJson()));
    _updateDailyFortune();
    notifyListeners();
  }

  void _updateDailyFortune() {
    if (_userProfile != null) {
      _dailyFortune = FortuneCalculator.calculateDailyFortune(
        DateTime.now(),
        _userProfile!,
      );
      notifyListeners();
    }
  }

  // 毎日の占いを更新
  void updateFortune() {
    _updateDailyFortune();
  }

  Future<void> markAppOpened() async {
    final prefs = await SharedPreferences.getInstance();
    final now = DateTime.now();
    await prefs.setString('lastOpenDate', now.toIso8601String());
    _lastOpenedDate = now;
    _canOpenApp = false;
    notifyListeners();
  }

  Future<void> markTutorialSeen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasSeenTutorial', true);
    _hasSeenTutorial = true;
    notifyListeners();
  }

  Future<void> setPremiumAccess(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasPremiumAccess', value);
    _hasPremiumAccess = value;
    notifyListeners();
  }

  Future<void> enablePremiumForDevelopment() async {
    _hasPremiumAccess = true;
    await _prefs.setBool('hasPremiumAccess', true);
    notifyListeners();
  }

  Future<void> disablePremiumForDevelopment() async {
    _hasPremiumAccess = false;
    await _prefs.setBool('hasPremiumAccess', false);
    notifyListeners();
  }

  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}
