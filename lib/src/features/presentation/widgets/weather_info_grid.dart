import 'package:flutter/material.dart';
import 'weather_info_card.dart';

class WeatherInfoGrid extends StatelessWidget {
  const WeatherInfoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: const [
              WeatherInfoCard(label: 'Температура', value: '11°'),
              WeatherInfoCard(label: 'Тиск', value: '1013 hPa'),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              WeatherInfoCard(label: 'Вологість', value: '87%'),
              WeatherInfoCard(label: 'Відчувається', value: '9°'),
            ],
          ),
        ],
      ),
    );
  }
}
