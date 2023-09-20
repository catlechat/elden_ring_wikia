import 'dart:convert';

class Shield {
  final String id;
  final String name;
  final String image;
  final String description;
  final String category;
  final double weight;
  final Map<String, dynamic> attack;
  final Map<String, dynamic> defence;
  final Map<String, dynamic> requiredAttributes;
  final Map<String, dynamic> scalesWith;

  Shield({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.category,
    required this.weight,
    required this.attack,
    required this.defence,
    required this.requiredAttributes,
    required this.scalesWith,
  });

  // Factory method to create Shield from JSON
  factory Shield.fromJson(Map<String, dynamic> json) {
    return Shield(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      category: json['category'] ?? "",
      weight: (json['weight'] ?? 0.0).toDouble(),
      attack: json['attack'] ?? {},
      defence: json['defence'] ?? {},
      requiredAttributes: json['requiredAttributes'] ?? {},
      scalesWith: json['scalesWith'] ?? {},
    );
  }

  // Method to convert Shield to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'category': category,
      'weight': weight,
      'attack': attack,
      'defence': defence,
      'requiredAttributes': requiredAttributes,
      'scalesWith': scalesWith,
    };
  }

  // ToString method for Shield
  @override
  String toString() {
    return 'Shield{id: $id, name: $name, image: $image, description: $description, category: $category, weight: $weight, attack: $attack, defence: $defence, requiredAttributes: $requiredAttributes, scalesWith: $scalesWith}';
  }
}
