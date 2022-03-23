import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';



class WeatherDetailSection extends StatelessWidget {
  const WeatherDetailSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,

          child: GridView(
            padding: EdgeInsets.all(15),
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 2 / 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            children: [
              _gridWeather('65%', 'Humidity',
                  WeatherIcons.raindrop),
              _gridWeather('2.06 km/h', 'Wind',
                  WeatherIcons.strong_wind),
              _gridWeather(
                  '11°C',
                  'Feels Like',
                  WeatherIcons.celsius),
              _gridWeather('1201 hPa', 'Pressure',
                  WeatherIcons.barometer),
            ],
          ),
        ),
      ],
    );
  }

  Widget _gridWeather(String header, String body, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(6, 8),
          ),
        ],
      ),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15, right: 5),
            child: Icon(
              WeatherIcons.wind,
              color: Colors.blue,
              size: 35,
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  header,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
              FittedBox(
                child: Text(
                  body,
                  style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
