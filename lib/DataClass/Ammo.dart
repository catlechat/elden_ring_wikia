import 'dart:convert';

class Ammo {
  final String id;
  final String name;
  final String image;
  final String description;
  final String type;
  final String passive;
  final Map<String, dynamic> attackPower;

  Ammo({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.type,
    required this.passive,
    required this.attackPower,
  });

  // Factory method to create AmmoItem from JSON
  factory Ammo.fromJson(Map<String, dynamic> json) {
    return Ammo(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      type: json['type'] ?? "",
      passive: json['passive'] ?? "",
      attackPower: json['attackPower'] ?? {},
    );
  }

  // Method to convert AmmoItem to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'type': type,
      'passive': passive,
      'attackPower': attackPower,
    };
  }

  // ToString method for AmmoItem
  @override
  String toString() {
    return 'AmmoItem{id: $id, name: $name, image: $image, description: $description, type: $type, passive: $passive, attackPower: $attackPower}';
  }
}
