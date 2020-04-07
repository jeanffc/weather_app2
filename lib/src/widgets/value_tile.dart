import 'package:flutter/material.dart';
import 'package:weather_app2/main.dart';
import 'package:weather_app2/src/widgets/empty_widget.dart';
import 'dart:math';

/// General utility widget used to render a cell divided into three rows
/// First row displays [label]
/// second row displays [iconData]
/// third row displays [value]
class ValueTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData iconData;

  var number = new Random();

  ValueTile(this.label, this.value, {this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.label,
          style:
              TextStyle(color: AppStateContainer.of(context).theme.accentColor),
        ),
        SizedBox(
          height: 10,
        ),
        this.iconData != null
            ? Icon(
                iconData,
                color: AppStateContainer.of(context).theme.accentColor,
                size: 20,
              )
            : EmptyWidget(),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.invert_colors,
              color: Colors.white,
              size: 10,
            ),
            Text(
              '${number.nextInt(12)}',
              style: TextStyle(
                  color: AppStateContainer.of(context).theme.accentColor,
                  fontSize: 10),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          this.value,
          style:
              TextStyle(color: AppStateContainer.of(context).theme.accentColor),
        ),
      ],
    );
  }
}
