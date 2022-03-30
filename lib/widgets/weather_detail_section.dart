import 'package:farming_manager/data/response/weather_response.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherDetailSection extends StatelessWidget {
  final WeatherResponse wData;

  const WeatherDetailSection({
    Key? key,
    required this.wData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Fimber.i("wData " + wData.toString());


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView(
            padding: const EdgeInsets.all(15),
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 2 / 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            children: [
              _gridWeather(wData.weatherRainType, '강수형태', WeatherIcons.na),
              _gridWeather('${wData.weatherHumidity}%', '습도', WeatherIcons.raindrop),
              _gridWeather('${wData.weatherWindSpeed} km/h', '풍속', WeatherIcons.strong_wind),
              _gridWeather('${wData.weatherTemp}°C', '현재기온', WeatherIcons.celsius),
              _gridWeather('${wData.weatherRainPercent}%', '강수확률', WeatherIcons.raindrops),
            ],
          ),
      ],
    );
  }

  Widget _gridWeather(String header, String body, IconData icon) {
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
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 5),
            child: Icon(
              icon,
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
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
