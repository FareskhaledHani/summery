import 'package:equatable/equatable.dart';

enum HistorySource { chaletPayment, chaletRefund, manualDeposit, manualWithdrawal }

class TreasuryHistoryItem extends Equatable {
  const TreasuryHistoryItem({
    required this.title,
    required this.amount,
    required this.date,
    required this.source,
  });

  final String title;
  final double amount;
  final DateTime date;
  final HistorySource source;

  bool get isPositive => amount >= 0;

  @override
  List<Object?> get props => [title, amount, date, source];
}