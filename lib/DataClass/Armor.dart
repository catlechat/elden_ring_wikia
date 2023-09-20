import 'dart:convert';

class Armor {
  final String id;
  final String name;
  final String image;
  final String description;
  final String category;
  final double weight;
  final Map<String, dynamic> dmgNegation;
  final Map<String, dynamic> resistance;

  Armor({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.category,
    required this.weight,
    required this.dmgNegation,
    required this.resistance,
  });

  // Factory method to create Armor from JSON
  factory Armor.fromJson(Map<String, dynamic> json) {
    return Armor(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      category: json['category'] ?? "",
      weight: (json['weight'] ?? 0.0).toDouble(),
      dmgNegation: json['dmgNegation'] ?? {},
      resistance: json['resistance'] ?? {},
    );
  }

  // Method to convert Armor to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'category': category,
      'weight': weight,
      'dmgNegation': dmgNegation,
      'resistance': resistance,
    };
  }

  // ToString method for Armor
  @override
  String toString() {
    return 'Armor{id: $id, name: $name, image: $image, description: $description, category: $category, weight: $weight, dmgNegation: $dmgNegation, resistance: $resistance}';
  }
}
