import 'package:flutter/material.dart';

class WeatherForecastBlock extends StatelessWidget {
  const WeatherForecastBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('5-денний прогноз',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 8),
            _buildRow('Сб', Icons.cloud, '6°', '15°'),
            _buildRow('Нд', Icons.sunny, '7°', '19°'),
            _buildRow('Пн', Icons.wb_sunny, '9°', '20°'),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Детальніше',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String day, IconData icon, String min, String max) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(day, style: TextStyle(color: Colors.white.withOpacity(0.7))),
          Icon(icon, color: Colors.yellow.shade300),
          Row(
            children: [
              Text(min, style: TextStyle(color: Colors.white.withOpacity(0.7))),
              const SizedBox(width: 8),
              Container(
                width: 60,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade200.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(width: 8),
              Text(max, style: const TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
