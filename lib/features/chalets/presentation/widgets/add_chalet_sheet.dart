import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_summer/core/utils/sizes.dart';
import 'package:my_summer/core/widgets/main_button.dart';
import 'package:my_summer/features/chalets/presentation/cubit/list_cubit/chalets_list_cubit.dart';

class AddChaletSheet extends StatefulWidget {
  const AddChaletSheet({super.key});

  @override
  State<AddChaletSheet> createState() => _AddChaletSheetState();
}

class _AddChaletSheetState extends State<AddChaletSheet> {
  final _nameController = TextEditingController();
  final _subtitleController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _subtitleController.dispose();
    super.dispose();
  }

  void _submit() {
    final name = _nameController.text.trim();
    if (name.isEmpty) return;

    context.read<ChaletsListCubit>().addChalet(
          name: name,
          subtitle: _subtitleController.text.trim().isEmpty
              ? null
              : _subtitleController.text.trim(),
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
            'شاليه جديد',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Gap(Sizes.s16.h),
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'اسم الشاليه'),
          ),
          Gap(Sizes.s12.h),
          TextField(
            controller: _subtitleController,
            decoration: const InputDecoration(labelText: 'وصف قصير (اختياري)'),
          ),
          Gap(Sizes.s20.h),
          MainButton(
            label: 'حفظ',
            width: double.infinity,
            onPressed: _submit,
          ),
        ],
      ),
    );
  }
}