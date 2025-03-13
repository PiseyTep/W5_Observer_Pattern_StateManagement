import 'package:flutter/material.dart';

import 'console_logger.dart';
import 'ride_preference.dart';
import 'ride_preferences_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RidePreferencesService _service = RidePreferencesService();
  final ConsoleLogger _logger = ConsoleLogger();

  @override
  void initState() {
    super.initState();
    _service.addListener(_logger);

    // Test selecting a preference
    var preference1 = RidePreference('Fast Ride');
    _service.selectPreference(
      preference1,
    ); // Should log: Selected Preference: Fast Ride
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ride Preferences')),
      body: Center(child: Text('I am a Billionaire')),
    );
  }

  @override
  void dispose() {
    _service.removeListener(_logger);
    super.dispose();
  }
}
