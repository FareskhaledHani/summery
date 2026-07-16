import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:my_summer/core/helpers/booking_calendar_helper.dart';
import 'package:my_summer/features/chalets/domain/entity/booking_entity/booking_entity.dart';
import 'package:my_summer/features/chalets/domain/entity/chalet_entity/chalet_entity.dart';
import 'package:my_summer/features/chalets/domain/repo/chalet_repo.dart';
import 'package:my_summer/features/chalets/presentation/cubit/details_cubit/chalet_details_state.dart';
import 'package:my_summer/features/chalets/presentation/cubit/details_cubit/chalets_details_cubit.dart';
import 'package:my_summer/features/details_chalet/presentaion/widgets/add_booking_sheet.dart';
import 'package:my_summer/features/details_chalet/presentaion/widgets/add_booking_sheet_details.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/sizes.dart';


class ChaletDetailsScreen extends StatelessWidget {
  const ChaletDetailsScreen({super.key, required this.chalet});

  final ChaletEntity chalet;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChaletDetailsCubit(
        GetIt.instance<ChaletRepository>(),
        chalet.id!,
      )..loadBookings(),
      child: _ChaletDetailsView(chalet: chalet),
    );
  }
}

class _ChaletDetailsView extends StatefulWidget {
  const _ChaletDetailsView({required this.chalet});

  final ChaletEntity chalet;

  @override
  State<_ChaletDetailsView> createState() => _ChaletDetailsViewState();
}

class _ChaletDetailsViewState extends State<_ChaletDetailsView> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.chalet.name)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openAddBookingSheet(context),
        icon: const Icon(Icons.add),
        label: const Text('حجز جديد'),
      ),
      body: BlocBuilder<ChaletDetailsCubit, ChaletDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            loaded: (bookings, totalPaidForChalet) {
              return SingleChildScrollView(
                padding: EdgeInsets.all(Sizes.s16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTotalCard(totalPaidForChalet),
                    Gap(Sizes.s16.h),
                    _buildCalendar(context, bookings),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildTotalCard(double totalPaid) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(Sizes.s16.w),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(Sizes.s12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'إجمالي المدفوع لهذا الشاليه',
            style: AppTextStyles.style14W500,
          ),
          Text(
            '${totalPaid.toStringAsFixed(0)} ج.م',
            style: AppTextStyles.style14W500.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar(BuildContext context, List<BookingEntity> bookings) {
    // توقيع فريد للبيانات: بيتغير كل ما تضيف/تلغي/تدفع حجز
    final signature = bookings
        .map((b) => '${b.id}-${b.isCancelled}-${b.totalPaid}')
        .join('|');

    return Container(
      key: ValueKey(signature),
      padding: EdgeInsets.all(Sizes.s8.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(Sizes.s16),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TableCalendar(
        locale: 'ar',
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2035, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });

          final booking = BookingCalendarHelper.bookingForDay(
            bookings,
            selectedDay,
          );

          if (booking != null) {
            _openBookingDetailsSheet(context, booking);
          } else {
            _openAddBookingSheet(context, initialDate: selectedDay);
          }
        },
        onPageChanged: (focusedDay) => _focusedDay = focusedDay,
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.3),
            shape: BoxShape.circle,
          ),
          selectedDecoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
        ),
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) {
            final booking = BookingCalendarHelper.bookingForDay(bookings, day);
            if (booking == null) return null;

            final color = booking.isFullyPaid
                ? Colors.green
                : Colors.orange; // مدفوع كامل = أخضر / لسه فيه باقي = برتقالي

            return Container(
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.75),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                '${day.day}',
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }

  void _openAddBookingSheet(BuildContext context, {DateTime? initialDate}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (sheetContext) => BlocProvider.value(
        value: context.read<ChaletDetailsCubit>(),
        child: AddBookingSheet(initialDate: initialDate),
      ),
    ).then((_) {
      // نشيل التحديد بعد قفل الشيت عشان الدائرة متفضلش ظاهرة على اليوم
      if (mounted) {
        setState(() => _selectedDay = null);
      }
    });
  }

  void _openBookingDetailsSheet(BuildContext context, BookingEntity booking) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (sheetContext) => BlocProvider.value(
        value: context.read<ChaletDetailsCubit>(),
        child: BookingDetailsSheet(booking: booking),
      ),
    ).then((_) {
      if (mounted) {
        setState(() => _selectedDay = null);
      }
    });
  }
}