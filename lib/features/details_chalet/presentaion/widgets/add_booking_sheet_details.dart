import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_summer/features/chalets/data/models/payment_model.dart';
import 'package:my_summer/features/chalets/domain/entity/booking_entity/booking_entity.dart';
import 'package:my_summer/features/chalets/presentation/cubit/details_cubit/chalets_details_cubit.dart';

import '../../../../core/utils/sizes.dart';
import '../../../../core/widgets/main_button.dart';

class BookingDetailsSheet extends StatefulWidget {
  const BookingDetailsSheet({super.key, required this.booking});

  final BookingEntity booking;

  @override
  State<BookingDetailsSheet> createState() => _BookingDetailsSheetState();
}

class _BookingDetailsSheetState extends State<BookingDetailsSheet> {
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  Future<void> _payRemaining() async {
    final amount = double.tryParse(_amountController.text) ?? 0;
    if (amount <= 0) return;

    await context.read<ChaletDetailsCubit>().addPayment(
          bookingId: widget.booking.id!,
          amount: amount,
          type: PaymentType.remaining,
        );

    if (context.mounted) Navigator.of(context).pop();
  }

  Future<void> _confirmCancel(BuildContext context, BookingEntity booking) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('تأكيد الإلغاء'),
        content: const Text('هل أنت متأكد من إلغاء هذا الحجز؟'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('رجوع'),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('نعم، إلغاء'),
          ),
        ],
      ),
    );

    if (confirmed != true || !context.mounted) return;

    final refund = await _askRefund(context);
    if (refund == null || !context.mounted) return;

    // لازم await هنا عشان نستنى العملية تخلص فعليًا قبل قفل الشيت
    await context.read<ChaletDetailsCubit>().cancelBooking(booking.id!, refund: refund);

    if (context.mounted) Navigator.of(context).pop();
  }

  Future<bool?> _askRefund(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('رد المبلغ'),
        content: const Text('هل تم رد المبلغ المدفوع للعميل؟'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('لا، الفلوس تفضل عندي'),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('نعم، تم الرد'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final booking = widget.booking;

    return Padding(
      padding: EdgeInsets.only(
        left: Sizes.s16.w,
        right: Sizes.s16.w,
        top: Sizes.s16.h,
        bottom: MediaQuery.of(context).viewInsets.bottom + Sizes.s16.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'تفاصيل الحجز',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Gap(Sizes.s12.h),
          _row('من', booking.startDate.toLocal().toString().split(' ').first),
          _row('إلى', booking.endDate.toLocal().toString().split(' ').first),
          _row('السعر الكلي', '${booking.totalPrice.toStringAsFixed(0)} ج.م'),
          _row('المدفوع', '${booking.totalPaid.toStringAsFixed(0)} ج.م'),
          _row('الباقي', '${booking.remaining.toStringAsFixed(0)} ج.م'),
          if (booking.notes != null) _row('ملاحظات', booking.notes!),
          Gap(Sizes.s16.h),

          // زرار الدفع بيظهر بس لو مش مدفوع بالكامل ولسه مش ملغي
          if (!booking.isFullyPaid && !booking.isCancelled) ...[
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'مبلغ الدفعة'),
            ),
            Gap(Sizes.s16.h),
            MainButton(
              label: 'دفع',
              width: double.infinity,
              onPressed: _payRemaining,
            ),
            Gap(Sizes.s12.h),
          ] else if (booking.isFullyPaid && !booking.isCancelled) ...[
            const Text(
              'تم سداد الحجز بالكامل ✅',
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
            ),
            Gap(Sizes.s12.h),
          ],

          // زرار الإلغاء دلوقتي منفصل ومتاح دايمًا طالما الحجز مش ملغي أصلاً
          if (!booking.isCancelled)
            OutlinedButton(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
              onPressed: () => _confirmCancel(context, booking),
              child: const Text('إلغاء الحجز'),
            )
          else
            const Text(
              'هذا الحجز ملغي',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
        ],
      ),
    );
  }

  Widget _row(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}