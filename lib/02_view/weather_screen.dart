import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_webtree/03_controller/weather_controller.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherController>(builder: (context, weather, _) {
      return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Image.network(weather.weatherModel?.current?.condition?.icon ?? "")
          ],
        ),
      );
    });
  }
}
