// ride_preferences_service.dart
import 'ride_preferences_listener.dart';
import 'ride_preference.dart';

class RidePreferencesService {
  final List<RidePreferencesListener> _listeners = [];
  RidePreference? _selectedPreference;

  void addListener(RidePreferencesListener listener) {
    _listeners.add(listener);
  }

  void removeListener(RidePreferencesListener listener) {
    _listeners.remove(listener);
  }

  void notifyListeners() {
    for (var listener in _listeners) {
      if (_selectedPreference != null) {
        listener.onPreferenceSelected(_selectedPreference!);
      }
    }
  }

  void selectPreference(RidePreference preference) {
    _selectedPreference = preference;
    notifyListeners();
  }

  void setPreference(RidePreference preference) {
    _selectedPreference = preference;
    notifyListeners();
  }
}
