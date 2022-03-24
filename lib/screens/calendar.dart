import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/calendar/calendar_view_model.dart';
import 'package:farming_manager/utils/utils.dart';
import 'package:farming_manager/widgets/farming_text.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends GetView<CalendarViewModel> {
  //
  // // Map<DateTime, List<EventsModel>> _events;
  // DateTime _selectedDay;

  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "달력", size: 16)),
      body: Container(
          height: MediaQuery.of(context).size.height,
          child:  Obx(() => _buildCalendarCustom())),
    );
  }

  Widget _buildCalendarCustom() {

    Fimber.i(":::now focusedDay -> " + controller.focusedDay.toString());

    return TableCalendar(
      focusedDay: controller.focusedDay,
      firstDay: kFirstDay,
      lastDay: kLastDay,
      locale: 'ko-KR',
      daysOfWeekHeight: 30.h,
      rowHeight: 100.h,
      calendarFormat: CalendarFormat.month,
      calendarBuilders: _calendarBuilder(),
      headerVisible: true,
      headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true),
      selectedDayPredicate: (day) {
        return isSameDay(controller.selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(controller.selectedDay, selectedDay)) {
          controller.setSelectedDay(selectedDay);
          controller.setFocusedDay(focusedDay);
        }

      },
    );
  }

  CalendarBuilders _calendarBuilder() {
    return CalendarBuilders(selectedBuilder: (context, day, _) {
      return  Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.green,width: 1.5)),
        child: Center(
          child: FarmingText(text: day.day.toString(), size: 14.sp),
        )

      );
    });
  }
}
