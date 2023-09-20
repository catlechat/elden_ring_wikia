import 'dart:convert';

class Talisman {
  final String id;
  final String name;
  final String image;
  final String description;
  final String effects;

  Talisman({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.effects,
  });

  // Factory method to create Talisman from JSON
  factory Talisman.fromJson(Map<String, dynamic> json) {
    return Talisman(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      effects: json['effects'] ?? "",
    );
  }

  // Method to convert Talisman to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'effects': effects,
    };
  }

  // ToString method for Talisman
  @override
  String toString() {
    return 'Talisman{id: $id, name: $name, image: $image, description: $description, effects: $effects}';
  }
}
