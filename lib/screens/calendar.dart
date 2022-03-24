import 'package:farming_manager/controller/calendar/calendar_view_model.dart';
import 'package:farming_manager/controller/kind/kind_information_view_model.dart';
import 'package:farming_manager/utils/utils.dart';
import 'package:farming_manager/widgets/farming_text.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
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
      body: Container(child: _buildCalendarCustom())
    );
  }



  Widget _buildCalendarCustom(){
    Fimber.i(":::kFirstDay " + kFirstDay.toString());
    Fimber.i(":::now " + DateTime.now().toString());
    Fimber.i(":::kLastDay " + kLastDay.toString());
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: kFirstDay,
      lastDay: kLastDay,
      locale: 'ko-KR',
      daysOfWeekHeight: 30,
      calendarFormat: CalendarFormat.month,
      availableGestures: AvailableGestures.all,
      daysOfWeekVisible : true,
      headerVisible: true,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true
      ),
    );
  }

  CalendarBuilders calendarBuilder() {
    return CalendarBuilders(
      selectedBuilder: (context, day, focusedDay){
         return Container();
      }
    );
  }


}
