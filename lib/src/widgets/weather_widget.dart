import 'package:flutter/material.dart';
import 'package:weather_app2/main.dart';
import 'package:weather_app2/src/model/weather.dart';
import 'package:weather_app2/src/widgets/forecast_horizontal_widget.dart';
import 'package:weather_app2/src/widgets/value_tile.dart';
import 'package:intl/intl.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  WeatherWidget({this.weather}) : assert(weather != null);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Icon(
              Icons.location_on,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              this.weather.cityName,
              style: TextStyle(
                  color: AppStateContainer.of(context).theme.accentColor,
                  fontSize: 20),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Text(
            DateFormat('E, MMMM d yy HH:mm').format(DateTime.now()),
            style: TextStyle(color: Colors.white.withAlpha(85), fontSize: 14),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                weather.getIconData(),
                color: AppStateContainer.of(context).theme.accentColor,
                size: 80,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '${this.weather.temperature.as(AppStateContainer.of(context).temperatureUnit).round()}°',
                style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.w200,
                    color: AppStateContainer.of(context).theme.accentColor),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '${this.weather.maxTemperature.as(AppStateContainer.of(context).temperatureUnit).round()}° / ${this.weather.minTemperature.as(AppStateContainer.of(context).temperatureUnit).round()}° Feels like ${this.weather.feelsLike.as(AppStateContainer.of(context).temperatureUnit).round()}°',
            style: TextStyle(
                fontSize: 16,
                color: AppStateContainer.of(context).theme.accentColor),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            this.weather.description,
            style: TextStyle(
                fontSize: 16,
                color: AppStateContainer.of(context).theme.accentColor),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Text(
              'Hourly',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ]),
          Padding(
            child: Divider(
              color:
                  AppStateContainer.of(context).theme.accentColor.withAlpha(50),
            ),
            padding: EdgeInsets.all(10),
          ),
          ForecastHorizontal(weathers: weather.forecast),
        ],
      ),
    );
  }
}
