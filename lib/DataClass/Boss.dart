import 'dart:convert';

class Boss {
  final String id;
  final String name;
  final String image;
  final String description;
  final String location;
  final List<String> drops;
  final String healthPoints;

  Boss({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.location,
    required this.drops,
    required this.healthPoints,
  });

  // Factory method to create Boss from JSON
  factory Boss.fromJson(Map<String, dynamic> json) {
    // Convert the 'drops' field from a JSON array to a list of strings
    final List<dynamic> dropsJson = json['drops'] ?? [];
    final List<String> dropsList = dropsJson.cast<String>().toList();

    return Boss(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      location: json['location'] ?? "",
      drops: dropsList,
      healthPoints: json['healthPoints'] ?? "",
    );
  }

  // Method to convert Boss to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'location': location,
      'drops': drops,
      'healthPoints': healthPoints,
    };
  }

  // ToString method for Boss
  @override
  String toString() {
    return 'Boss{id: $id, name: $name, image: $image, description: $description, location: $location, drops: $drops, healthPoints: $healthPoints}';
  }
}
