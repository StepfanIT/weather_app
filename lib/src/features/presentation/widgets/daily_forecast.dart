import 'package:flutter/material.dart';

class DailyForecastWidget extends StatelessWidget {
  final int index;

  const DailyForecastWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('День ${index + 1}', style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 8),
          const Icon(Icons.cloud, color: Colors.white),
          const SizedBox(height: 8),
          const Text('12° / 18°', style: TextStyle(color: Colors.white)),
          const Text('Дощ', style: TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
