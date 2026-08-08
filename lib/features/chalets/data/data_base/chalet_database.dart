import 'package:my_summer/core/data_base/app_database.dart';
import 'package:my_summer/features/chalets/data/models/booking_model.dart';
import 'package:my_summer/features/chalets/data/models/chalet_model.dart';
import 'package:my_summer/features/chalets/data/models/chalet_model_expensee.dart';
import 'package:my_summer/features/chalets/data/models/payment_model.dart';

class ChaletLocalDataSource {
  ChaletLocalDataSource(this._appDatabase);

  final AppDatabase _appDatabase;

  // ---------- Chalets ----------

  Future<int> addChalet(ChaletModel chalet) async {
    final db = await _appDatabase.database;
    return db.insert('chalets', chalet.toMap());
  }

  Future<List<ChaletModel>> getAllChalets() async {
    final db = await _appDatabase.database;
    final result = await db.query('chalets', orderBy: 'created_at DESC');
    return result.map(ChaletModel.fromMap).toList();
  }

  Future<void> deleteChalet(int chaletId) async {
    final db = await _appDatabase.database;
    await db.delete('chalets', where: 'id = ?', whereArgs: [chaletId]);
  }

  // ---------- Bookings ----------

  Future<int> addBooking(BookingModel booking) async {
    final db = await _appDatabase.database;
    return db.insert('bookings', booking.toMap());
  }

  Future<List<BookingModel>> getBookingsForChalet(int chaletId) async {
    final db = await _appDatabase.database;
    final result = await db.query(
      'bookings',
      where: 'chalet_id = ?',
      whereArgs: [chaletId],
      orderBy: 'start_date ASC',
    );
    return result.map(BookingModel.fromMap).toList();
  }

  Future<bool> isChaletBookedOnDate(int chaletId, DateTime date) async {
    final db = await _appDatabase.database;
    final dateStr = date.toIso8601String();
    final result = await db.rawQuery('''
      SELECT COUNT(*) as count FROM bookings
      WHERE chalet_id = ?
      AND start_date <= ?
      AND end_date >= ?
      AND is_cancelled = 0
    ''', [chaletId, dateStr, dateStr]);
    return (result.first['count'] as int) > 0;
  }

  Future<bool> hasOverlap(
    int chaletId,
    DateTime startDate,
    DateTime endDate,
  ) async {
    final db = await _appDatabase.database;
    final result = await db.rawQuery('''
      SELECT COUNT(*) as count FROM bookings
      WHERE chalet_id = ?
      AND is_cancelled = 0
      AND start_date <= ?
      AND end_date >= ?
    ''', [
      chaletId,
      endDate.toIso8601String(),
      startDate.toIso8601String(),
    ]);
    return (result.first['count'] as int) > 0;
  }

  Future<void> cancelBooking(int bookingId, {required bool refund}) async {
    final db = await _appDatabase.database;

    await db.update(
      'bookings',
      {
        'is_cancelled': 1,
        'is_refunded': refund ? 1 : 0,
      },
      where: 'id = ?',
      whereArgs: [bookingId],
    );

    if (refund) {
      final totalPaid = await getTotalPaidForBooking(bookingId);
      if (totalPaid > 0) {
        await db.insert('payments', {
          'booking_id': bookingId,
          'amount': -totalPaid,
          'paid_at': DateTime.now().toIso8601String(),
          'type': 'refund',
        });
      }
    }
  }

  // ---------- Payments ----------

  Future<int> addPayment(PaymentModel payment) async {
    final db = await _appDatabase.database;
    return db.insert('payments', payment.toMap());
  }

  Future<List<PaymentModel>> getPaymentsForBooking(int bookingId) async {
    final db = await _appDatabase.database;
    final result = await db.query(
      'payments',
      where: 'booking_id = ?',
      whereArgs: [bookingId],
      orderBy: 'paid_at ASC',
    );
    return result.map(PaymentModel.fromMap).toList();
  }

  Future<double> getTotalPaidForBooking(int bookingId) async {
    final db = await _appDatabase.database;
    final result = await db.rawQuery('''
      SELECT COALESCE(SUM(amount), 0) as total
      FROM payments
      WHERE booking_id = ?
    ''', [bookingId]);
    return (result.first['total'] as num).toDouble();
  }

  Future<double> getTotalPaidAcrossAllChalets() async {
    final db = await _appDatabase.database;
    final result = await db.rawQuery('''
      SELECT COALESCE(SUM(amount), 0) as total FROM payments
    ''');
    final paymentsTotal = (result.first['total'] as num).toDouble();

    final expensesResult = await db.rawQuery('''
      SELECT COALESCE(SUM(amount), 0) as total FROM chalet_expenses WHERE is_cancelled = 0
    ''');
    final expensesTotal = (expensesResult.first['total'] as num).toDouble();

    return paymentsTotal - expensesTotal;
  }

  // إجمالي مدفوعات الشاليه مخصوم منها المصروفات النشطة
  Future<double> getTotalPaidForChalet(int chaletId) async {
    final db = await _appDatabase.database;
    final result = await db.rawQuery('''
      SELECT COALESCE(SUM(p.amount), 0) as total
      FROM payments p
      INNER JOIN bookings b ON p.booking_id = b.id
      WHERE b.chalet_id = ?
    ''', [chaletId]);
    final paymentsTotal = (result.first['total'] as num).toDouble();

    final expensesTotal = await getTotalExpensesForChalet(chaletId);

    return paymentsTotal - expensesTotal;
  }

  // ---------- Chalet Expenses ----------

  Future<int> addChaletExpense(ChaletExpenseModel expense) async {
    final db = await _appDatabase.database;
    return db.insert('chalet_expenses', expense.toMap());
  }

  Future<List<ChaletExpenseModel>> getExpensesForChalet(int chaletId) async {
    final db = await _appDatabase.database;
    final result = await db.query(
      'chalet_expenses',
      where: 'chalet_id = ?',
      whereArgs: [chaletId],
      orderBy: 'created_at DESC',
    );
    return result.map(ChaletExpenseModel.fromMap).toList();
  }

  Future<void> cancelChaletExpense(int expenseId) async {
    final db = await _appDatabase.database;
    await db.update(
      'chalet_expenses',
      {'is_cancelled': 1},
      where: 'id = ?',
      whereArgs: [expenseId],
    );
  }

  Future<double> getTotalExpensesForChalet(int chaletId) async {
    final db = await _appDatabase.database;
    final result = await db.rawQuery('''
      SELECT COALESCE(SUM(amount), 0) as total
      FROM chalet_expenses
      WHERE chalet_id = ? AND is_cancelled = 0
    ''', [chaletId]);
    return (result.first['total'] as num).toDouble();
  }
}