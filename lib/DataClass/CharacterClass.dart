import 'dart:convert';

class CharacterClass {
  final String id;
  final String name;
  final String image;
  final String description;
  final Map<String, String> stats;

  CharacterClass({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.stats,
  });

  // Factory method to create CharacterClass from JSON
  factory CharacterClass.fromJson(Map<String, dynamic> json) {
    // Convert the 'stats' field from a JSON object to a map of strings
    final Map<String, dynamic> statsJson = json['stats'] ?? {};
    final Map<String, String> statsMap = Map<String, String>.from(statsJson);

    return CharacterClass(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      stats: statsMap,
    );
  }

  // Method to convert CharacterClass to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'stats': stats,
    };
  }

  // ToString method for CharacterClass
  @override
  String toString() {
    return 'CharacterClass{id: $id, name: $name, image: $image, description: $description, stats: $stats}';
  }
}
