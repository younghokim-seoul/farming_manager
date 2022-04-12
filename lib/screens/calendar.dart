import 'dart:collection';

import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/memo_list_request.dart';
import 'package:farming_manager/data/response/memo_list_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/router/routese.dart';
import 'package:farming_manager/utils/utils.dart';
import 'package:farming_manager/widgets/farming_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../main.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CalendarState();
}

class _CalendarState extends State<CalendarScreen> {
  final repository = locator.get<FarmingRepository>();
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  final events = LinkedHashMap<DateTime, List<MemoListResponse>>(equals: isSameDay);

  Map<DateTime, List<MemoListResponse>> kEventSource = {};

  List<MemoListResponse> _getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }



  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    fetchMemoItems();
  }

  @override
  void dispose() {

    super.dispose();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      var selectedTime = dataTimeToString(selectedDay);
      Get.toNamed(Routes.MEMO, arguments: {"EXTRA_DATE": selectedTime});
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "달력", size: 16)),
      body: SingleChildScrollView(child: _buildCalendarCustom()),
    );
  }

  Widget _buildCalendarCustom() {
    return TableCalendar(
      focusedDay: _focusedDay,
      firstDay: kFirstDay,
      lastDay: kLastDay,
      locale: 'ko-KR',
      daysOfWeekHeight: 30.h,
      rowHeight: 90.h,
      calendarFormat: CalendarFormat.month,
      calendarBuilders: _calendarBuilder(),
      headerVisible: true,
      headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true),
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      onDaySelected: _onDaySelected,
      eventLoader: _getEventsForDay,
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
          fetchMemoItems();
        },
    );
  }

  CalendarBuilders _calendarBuilder() {
    return CalendarBuilders(selectedBuilder: (context, day, _) {
      return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 1.5)),
          child: Center(
            child: FarmingText(text: day.day.toString(), size: 14.sp),
          ));
    });
  }

  void fetchMemoItems() async {
    int year = _focusedDay.year;
    int month = _focusedDay.month;
    final response = await repository.getMemoList(MemoListRequest(wYear: year, wMonth: month));

    response.when(success: (response) {
      // logger.i(response);

      if(response.isNotEmpty){
        for (var element in response) {
          kEventSource[DateTime(element.wYear,element.wMonth,element.wDay)] = [element];
        }

        setState(() {
          events.addAll(kEventSource);
        });
      }
      // logger.e("[fetchMemoItems] events -> " + events.length.toString());
    }, error: (error) {
      logger.e("[fetchMemoItems] Api Error -> $error");
    });
  }

}
