import 'dart:convert';

class Spirit {
  final String id;
  final String name;
  final String image;
  final String description;
  final double fpCost;
  final double hpCost;
  final String effects;

  Spirit({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.fpCost,
    required this.hpCost,
    required this.effects,
  });

  // Factory method to create Spirit from JSON
  factory Spirit.fromJson(Map<String, dynamic> json) {
    return Spirit(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      fpCost: (json['fpCost'] ?? 0.0).toDouble(),
      hpCost: (json['hpCost'] ?? 0.0).toDouble(),
      effects: json['effects'] ?? "",
    );
  }

  // Method to convert Spirit to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'fpCost': fpCost,
      'hpCost': hpCost,
      'effects': effects,
    };
  }

  // ToString method for Spirit
  @override
  String toString() {
    return 'Spirit{id: $id, name: $name, image: $image, description: $description, fpCost: $fpCost, hpCost: $hpCost, effects: $effects}';
  }
}
