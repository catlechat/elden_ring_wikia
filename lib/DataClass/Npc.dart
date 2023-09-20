import 'dart:convert';

class Npc {
  final String id;
  final String name;
  final String image;
  final String role;
  final String location;
  final String quote;

  Npc({
    required this.id,
    required this.name,
    required this.image,
    required this.role,
    required this.location,
    required this.quote,
  });

  // Factory method to create Npc from JSON
  factory Npc.fromJson(Map<String, dynamic> json) {
    return Npc(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      role: json['role'] ?? "",
      location: json['location'] ?? "",
      quote: json['quote'] ?? "",
    );
  }

  // Method to convert Npc to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'role': role,
      'location': location,
      'quote': quote,
    };
  }

  // ToString method for Npc
  @override
  String toString() {
    return 'Npc{id: $id, name: $name, image: $image, role: $role, location: $location, quote: $quote}';
  }
}
