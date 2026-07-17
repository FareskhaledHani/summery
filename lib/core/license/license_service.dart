import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LicenseService {
  // السر بتاعك انت بس - غيّره لحاجة تانية طويلة وعشوائية
  static const String _secretKey = 'SAYFI-2026-XZ91-SECRET-KEY-CHANGE-ME';

  static const String _prefsKey = 'activated_month';

  // بيحسب الكود الصحيح لأي شهر/سنة (المفروض تستخدمها انت بس عشان تولّد السيريال)
  static String generateCodeFor(int year, int month) {
    final input = '$_secretKey-$year-${month.toString().padLeft(2, '0')}';
    final bytes = utf8.encode(input);
    final hash = sha256.convert(bytes).toString().toUpperCase();
    return hash.substring(0, 8);
  }

  static String get _currentMonthKey {
    final now = DateTime.now();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}';
  }

  // هل التطبيق مفعّل للشهر الحالي؟
  static Future<bool> isActivatedForCurrentMonth() async {
    final prefs = await SharedPreferences.getInstance();
    final activatedMonth = prefs.getString(_prefsKey);
    return activatedMonth == _currentMonthKey;
  }

  // تفعيل بالكود اللي المستخدم دخله
  static Future<bool> activate(String enteredCode) async {
    final now = DateTime.now();
    final correctCode = generateCodeFor(now.year, now.month);

    if (enteredCode.trim().toUpperCase() == correctCode) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_prefsKey, _currentMonthKey);
      return true;
    }
    return false;
  }
}