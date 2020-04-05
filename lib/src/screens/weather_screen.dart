import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
        body: Material(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "São José dos Campos",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  DateFormat('E, MMMM d yy HH:mm').format(DateTime.now()),
                  style: TextStyle(
                      color: Colors.white.withAlpha(80), fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 70,
                    ),
                    Text(
                      "30º",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 80),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
