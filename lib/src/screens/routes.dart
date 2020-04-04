import 'package:flutter/material.dart';
import 'package:weather_app2/src/screens/weather_screen.dart';
import 'package:weather_app2/src/screens/settings_screen.dart';

class Routes {
  static final mainRoute = <String, WidgetBuilder>{
    '/home': (context) => WeatherScreen(),
    '/settings': (context) => SettingsScreen(),
  };
}
