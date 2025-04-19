import 'package:flutter/material.dart';

class WeatherHeaderWidget extends StatelessWidget {
  const WeatherHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade300.withOpacity(0.6),
            Colors.blue.shade500.withOpacity(0.8),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Богрівка',
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 20,
              )),
          const SizedBox(height: 8),
          const Text('11°',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              )),
          Text('Невеликий дощ 15°/6°',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
              )),
        ],
      ),
    );
  }
}
