import 'dart:convert';

class Location {
  final String id;
  final String name;
  final String image;
  final String description;

  Location({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });

  // Factory method to create Location from JSON
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
    );
  }

  // Method to convert Location to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
    };
  }

  // ToString method for Location
  @override
  String toString() {
    return 'Location{id: $id, name: $name, image: $image, description: $description}';
  }
}
