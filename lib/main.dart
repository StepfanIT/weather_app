import 'package:flutter/material.dart';
import 'src/core/di/injection.dart';
import 'src/features/presentation/pages/weather_page.dart';

void main() {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}