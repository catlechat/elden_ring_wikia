import 'dart:convert';

class Item {
  final String id;
  final String name;
  final String image;
  final String description;
  final String type;
  final String effect;

  Item({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.type,
    required this.effect,
  });

  // Factory method to create Item from JSON
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      type: json['type'] ?? "",
      effect: json['effect'] ?? "",
    );
  }

  // Method to convert Item to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'type': type,
      'effect': effect,
    };
  }

  // ToString method for Item
  @override
  String toString() {
    return 'Item{id: $id, name: $name, image: $image, description: $description, type: $type, effect: $effect}';
  }
}
