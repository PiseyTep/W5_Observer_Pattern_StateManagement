import 'package:flutter/material.dart';
import '../constants/card_type.dart';
import '../widgets/color_tap.dart';

class TapsScreen extends StatelessWidget {
  const TapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Color Taps', style: TextStyle(fontSize: 24)),
          ),
          ColorTap(type: CardType.red),
          ColorTap(type: CardType.blue),
        ],
      ),
    );
  }
}
