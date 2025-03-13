import 'package:w5_observer_pattern_statemanagement/Exercise-1/ride_preference.dart';

abstract class RidePreferencesListener {
  void onPreferenceSelected(RidePreference selectedPreference);
}
