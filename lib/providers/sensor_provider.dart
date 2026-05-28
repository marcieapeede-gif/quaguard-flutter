import 'package:flutter/foundation.dart';
import '../models/sensor_data.dart';

class SensorProvider with ChangeNotifier {
  List<SensorData> _sensorDataList = [];
  bool _isLoading = false;
  String _errorMessage = '';

  List<SensorData> get sensorDataList => _sensorDataList;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void addSensorData(SensorData data) {
    _sensorDataList.add(data);
    // Keep only last 100 readings
    if (_sensorDataList.length > 100) {
      _sensorDataList.removeAt(0);
    }
    notifyListeners();
  }

  void setSensorDataList(List<SensorData> data) {
    _sensorDataList = data;
    notifyListeners();
  }

  void setErrorMessage(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  void clearError() {
    _errorMessage = '';
    notifyListeners();
  }

  // Get average temperature
  double get averageTemperature {
    if (_sensorDataList.isEmpty) return 0;
    double sum = 0;
    for (var data in _sensorDataList) {
      sum += data.temperature;
    }
    return sum / _sensorDataList.length;
  }

  // Get average pH
  double get averagePH {
    if (_sensorDataList.isEmpty) return 0;
    double sum = 0;
    for (var data in _sensorDataList) {
      sum += data.phLevel;
    }
    return sum / _sensorDataList.length;
  }
}
