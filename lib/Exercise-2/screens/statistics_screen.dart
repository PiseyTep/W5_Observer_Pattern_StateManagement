import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/color_counters.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Consumer<ColorCounters>(
        builder: (context, colorCounters, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Red Taps: ${colorCounters.redTaps}',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Blue Taps: ${colorCounters.blueTaps}',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
