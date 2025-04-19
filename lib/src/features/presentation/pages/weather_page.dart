import 'package:flutter/material.dart';
import '../widgets/weather_header.dart';
import '../widgets/weather_extra.dart';
import '../widgets/weather_info_grid.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200.withOpacity(0.7),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: WeatherHeaderWidget()),
          const SliverToBoxAdapter(child: WeatherExtraWidget()),
          const SliverToBoxAdapter(child: WeatherInfoGrid()),
        ],
      ),
    );
  }
}
