import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_summer/features/chalets/presentation/cubit/details_cubit/chalets_details_cubit.dart';

import '../../../../core/utils/sizes.dart';
import '../../../../core/widgets/main_button.dart';

class AddBookingSheet extends StatefulWidget {
  const AddBookingSheet({super.key, this.initialDate});

  final DateTime? initialDate;

  @override
  State<AddBookingSheet> createState() => _AddBookingSheetState();
}

class _AddBookingSheetState extends State<AddBookingSheet> {
  DateTime? _startDate;
  DateTime? _endDate;
  final _priceController = TextEditingController();
  final _depositController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _startDate = widget.initialDate;
  }

  @override
  void dispose() {
    _priceController.dispose();
    _depositController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _pickDateRange() async {
    final range = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(days: 730)),
      initialDateRange: _startDate != null
          ? DateTimeRange(start: _startDate!, end: _startDate!)
          : null,
    );
    if (range != null) {
      setState(() {
        _startDate = range.start;
        _endDate = range.end;
      });
    }
  }

void _submit() {
    if (_startDate == null || _endDate == null) return;
    final price = double.tryParse(_priceController.text) ?? 0;
    final deposit = double.tryParse(_depositController.text);

    context.read<ChaletDetailsCubit>().addBookingChecked(
          startDate: _startDate!,
          endDate: _endDate!,
          totalPrice: price,
          notes: _notesController.text.isEmpty ? null : _notesController.text,
          depositAmount: deposit,
        );

    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
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
            'حجز جديد',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Gap(Sizes.s16.h),
          OutlinedButton.icon(
            onPressed: _pickDateRange,
            icon: const Icon(Icons.calendar_today),
            label: Text(
              _startDate == null
                  ? 'اختر تاريخ الحجز'
                  : '${_startDate!.toLocal().toString().split(' ').first} '
                      'إلى ${_endDate?.toLocal().toString().split(' ').first ?? ''}',
            ),
          ),
          Gap(Sizes.s16.h),
          TextField(
            controller: _priceController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'السعر الكلي'),
          ),
          Gap(Sizes.s12.h),
          TextField(
            controller: _depositController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'المقدم (اختياري)'),
          ),
          Gap(Sizes.s12.h),
          TextField(
            controller: _notesController,
            decoration: const InputDecoration(labelText: 'ملاحظات (اختياري)'),
          ),
          Gap(Sizes.s20.h),
          MainButton(
            label: 'حفظ الحجز',
            width: double.infinity,
            onPressed: _submit,
          ),
        ],
      ),
    );
  }
}