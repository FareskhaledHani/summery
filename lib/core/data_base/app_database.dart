import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class AppDatabase {
  AppDatabase._();
  static final AppDatabase instance = AppDatabase._();

  Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDb();
    return _db!;
  }

  Future<Database> _initDb() async {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;

    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'talaby_dashboard.db');
    print('=== DATABASE PATH: $path ===');

    return databaseFactory.openDatabase(
      path,
      options: OpenDatabaseOptions(
        version: 3, // كان 2
        onCreate: _onCreate,
        onUpgrade: _onUpgrade,
      ),
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE chalets (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        subtitle TEXT,
        created_at TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE bookings (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        chalet_id INTEGER NOT NULL,
        start_date TEXT NOT NULL,
        end_date TEXT NOT NULL,
        total_price REAL NOT NULL,
        notes TEXT,
        created_at TEXT NOT NULL,
        is_cancelled INTEGER NOT NULL DEFAULT 0,
        is_refunded INTEGER NOT NULL DEFAULT 0,
        FOREIGN KEY (chalet_id) REFERENCES chalets (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE payments (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        booking_id INTEGER NOT NULL,
        amount REAL NOT NULL,
        paid_at TEXT NOT NULL,
        type TEXT NOT NULL, -- 'deposit' | 'remaining' | 'extra' | 'refund'
        FOREIGN KEY (booking_id) REFERENCES bookings (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE treasury_transactions (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        type TEXT NOT NULL, -- 'deposit' | 'withdrawal'
        amount REAL NOT NULL,
        description TEXT,
        created_at TEXT NOT NULL
      )
    ''');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await db.execute(
        'ALTER TABLE bookings ADD COLUMN is_cancelled INTEGER NOT NULL DEFAULT 0',
      );
      await db.execute(
        'ALTER TABLE bookings ADD COLUMN is_refunded INTEGER NOT NULL DEFAULT 0',
      );
    }
    if (oldVersion < 3) {
      await db.execute('''
        CREATE TABLE treasury_transactions (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          type TEXT NOT NULL,
          amount REAL NOT NULL,
          description TEXT,
          created_at TEXT NOT NULL
        )
      ''');
    }
  }

  Future<void> close() async {
    final db = await database;
    await db.close();
    _db = null;
  }
}