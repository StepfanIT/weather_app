import 'package:flutter/material.dart';
import '../widgets/daily_forecast.dart';

class WeatherDetailsPage extends StatelessWidget {
  const WeatherDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200.withOpacity(0.7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          '5-денний прогноз погоди',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(5, (index) {
                return DailyForecastWidget(index: index);
              }),
            ),
          ),
        ),
      ),
    );
  }
}
