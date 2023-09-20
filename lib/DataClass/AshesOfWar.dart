import 'dart:convert';

class AshesOfWar {
  final String id;
  final String name;
  final String image;
  final String description;
  final String affinity;
  final String skill;

  AshesOfWar({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.affinity,
    required this.skill,
  });

  // Factory method to create AshesOfWar from JSON
  factory AshesOfWar.fromJson(Map<String, dynamic> json) {
    return AshesOfWar(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      affinity: json['affinity'] ?? "",
      skill: json['skill'] ?? "",
    );
  }

  // Method to convert AshesOfWar to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'affinity': affinity,
      'skill': skill,
    };
  }

  // ToString method for AshesOfWar
  @override
  String toString() {
    return 'AshesOfWar{id: $id, name: $name, image: $image, description: $description, affinity: $affinity, skill: $skill}';
  }
}
