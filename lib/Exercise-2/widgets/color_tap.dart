import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/color_counters.dart';
import '../constants/card_type.dart';

class ColorTap extends StatelessWidget {
  final CardType type;

  const ColorTap({super.key, required this.type});

  Color get backgroundColor => type == CardType.red ? Colors.red : Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorCounters>(
      builder: (context, colorCounters, child) {
        return GestureDetector(
          onTap: () {
            if (type == CardType.red) {
              colorCounters.incrementRed();
            } else {
              colorCounters.incrementBlue();
            }
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text(
                'Taps: ${type == CardType.red ? colorCounters.redTaps : colorCounters.blueTaps}',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
