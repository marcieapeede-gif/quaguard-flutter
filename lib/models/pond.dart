class Pond {
  final String id;
  final String name;
  final String fishType;
  final int fishCount;
  final DateTime createdAt;

  Pond({
    required this.id,
    required this.name,
    required this.fishType,
    required this.fishCount,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'fishType': fishType,
      'fishCount': fishCount,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory Pond.fromMap(Map<String, dynamic> map) {
    return Pond(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      fishType: map['fishType'] ?? '',
      fishCount: map['fishCount']?.toInt() ?? 0,
      createdAt: map['createdAt'] != null
          ? DateTime.parse(map['createdAt'])
          : DateTime.now(),
    );
  }
}
