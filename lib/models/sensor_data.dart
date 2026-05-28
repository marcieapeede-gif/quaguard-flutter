class SensorData {
  final String id;
  final String pondId;
  final double temperature;
  final double phLevel;
  final double oxygenLevel;
  final int fishCount;
  final DateTime timestamp;

  SensorData({
    required this.id,
    required this.pondId,
    required this.temperature,
    required this.phLevel,
    required this.oxygenLevel,
    required this.fishCount,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pondId': pondId,
      'temperature': temperature,
      'phLevel': phLevel,
      'oxygenLevel': oxygenLevel,
      'fishCount': fishCount,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory SensorData.fromMap(Map<String, dynamic> map) {
    return SensorData(
      id: map['id'] ?? '',
      pondId: map['pondId'] ?? '',
      temperature: map['temperature']?.toDouble() ?? 0.0,
      phLevel: map['phLevel']?.toDouble() ?? 0.0,
      oxygenLevel: map['oxygenLevel']?.toDouble() ?? 0.0,
      fishCount: map['fishCount']?.toInt() ?? 0,
      timestamp: map['timestamp'] != null
          ? DateTime.parse(map['timestamp'])
          : DateTime.now(),
    );
  }
}
