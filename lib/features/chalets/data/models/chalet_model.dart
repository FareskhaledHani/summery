class ChaletModel {
  const ChaletModel({
    this.id,
    required this.name,
    this.subtitle,
    required this.createdAt,
  });

  final int? id;
  final String name;
  final String? subtitle;
  final DateTime createdAt;

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'subtitle': subtitle,
      'created_at': createdAt.toIso8601String(),
    };
  }

  factory ChaletModel.fromMap(Map<String, dynamic> map) {
    return ChaletModel(
      id: map['id'] as int?,
      name: map['name'] as String,
      subtitle: map['subtitle'] as String?,
      createdAt: DateTime.parse(map['created_at'] as String),
    );
  }

  ChaletModel copyWith({int? id, String? name, String? subtitle}) {
    return ChaletModel(
      id: id ?? this.id,
      name: name ?? this.name,
      subtitle: subtitle ?? this.subtitle,
      createdAt: createdAt,
    );
  }
}