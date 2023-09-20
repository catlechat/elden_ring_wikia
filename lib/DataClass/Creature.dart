import 'dart:convert';

class Creature {
  final String id;
  final String name;
  final String image;
  final String description;
  final String location;
  final List<String> drops;

  Creature({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.location,
    required this.drops,
  });

  // Factory method to create Creature from JSON
  factory Creature.fromJson(Map<String, dynamic> json) {
    // Convert the 'drops' field from a JSON array to a list of strings
    final List<dynamic> dropsJson = json['drops'] ?? [];
    final List<String> dropsList = dropsJson.cast<String>().toList();

    return Creature(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      location: json['location'] ?? "",
      drops: dropsList,
    );
  }

  // Method to convert Creature to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'location': location,
      'drops': drops,
    };
  }

  // ToString method for Creature
  @override
  String toString() {
    return 'Creature{id: $id, name: $name, image: $image, description: $description, location: $location, drops: $drops}';
  }
}
