import 'dart:convert';
import 'package:crypto/crypto.dart';

// نفس السر والمنطق اللي في license_service.dart بالظبط - لازم يفضلوا متطابقين
const String _secretKey = 'SAYFI-2026-XZ91-SECRET-KEY-CHANGE-ME';

String generateCodeFor(int year, int month) {
  final input = '$_secretKey-$year-${month.toString().padLeft(2, '0')}';
  final bytes = utf8.encode(input);
  final hash = sha256.convert(bytes).toString().toUpperCase();
  return hash.substring(0, 8);
}

void main() {
  final now = DateTime.now();
  final code = generateCodeFor(now.year, now.month);
  print('كود شهر ${now.month}/${now.year}: $code');
}