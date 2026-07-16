import 'package:my_summer/core/data_base/app_database.dart';
import 'package:my_summer/features/expenses/data/models/treasury_transaction_model.dart';

class TreasuryLocalDataSource {
  TreasuryLocalDataSource(this._appDatabase);

  final AppDatabase _appDatabase;

  Future<int> addTransaction(TreasuryTransactionModel transaction) async {
    final db = await _appDatabase.database;
    final map = transaction.toJson()..removeWhere((key, value) => key == 'id' && value == null);
    return db.insert('treasury_transactions', map);
  }

  Future<List<TreasuryTransactionModel>> getTransactionsForYear(int year) async {
    final db = await _appDatabase.database;
    final result = await db.query(
      'treasury_transactions',
      where: "strftime('%Y', created_at) = ?",
      whereArgs: [year.toString()],
      orderBy: 'created_at DESC',
    );
    return result.map(TreasuryTransactionModel.fromJson).toList();
  }

  Future<double> getManualNetForYear(int year) async {
    final db = await _appDatabase.database;
    final result = await db.rawQuery('''
      SELECT COALESCE(SUM(
        CASE WHEN type = 'deposit' THEN amount ELSE -amount END
      ), 0) as net
      FROM treasury_transactions
      WHERE strftime('%Y', created_at) = ?
    ''', [year.toString()]);
    return (result.first['net'] as num).toDouble();
  }

  Future<double> getChaletsRevenueForYear(int year) async {
    final db = await _appDatabase.database;
    final result = await db.rawQuery('''
      SELECT COALESCE(SUM(amount), 0) as total
      FROM payments
      WHERE strftime('%Y', paid_at) = ?
    ''', [year.toString()]);
    return (result.first['total'] as num).toDouble();
  }

  Future<List<Map<String, dynamic>>> getChaletPaymentsForYear(int year) async {
    final db = await _appDatabase.database;
    return db.rawQuery('''
      SELECT p.id, p.amount, p.paid_at, p.type, c.name as chalet_name
      FROM payments p
      INNER JOIN bookings b ON p.booking_id = b.id
      INNER JOIN chalets c ON b.chalet_id = c.id
      WHERE strftime('%Y', p.paid_at) = ?
      ORDER BY p.paid_at DESC
    ''', [year.toString()]);
  }
}