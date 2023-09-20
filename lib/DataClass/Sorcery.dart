import 'dart:convert';

class Sorcery {
  final String id;
  final String name;
  final String image;
  final String description;
  final String type;
  final double cost;
  final int slots;
  final String effects;
  final Map<String, dynamic> requires;

  Sorcery({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.type,
    required this.cost,
    required this.slots,
    required this.effects,
    required this.requires,
  });

  // Factory method to create Sorcery from JSON
  factory Sorcery.fromJson(Map<String, dynamic> json) {
    // Convert the 'requires' field from a JSON object to a map of dynamic
    final Map<String, dynamic> requiresJson = json['requires'] ?? {};

    return Sorcery(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      type: json['type'] ?? "",
      cost: (json['cost'] ?? 0.0).toDouble(),
      slots: json['slots'] ?? 0,
      effects: json['effects'] ?? "",
      requires: requiresJson,
    );
  }

  // Method to convert Sorcery to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'type': type,
      'cost': cost,
      'slots': slots,
      'effects': effects,
      'requires': requires,
    };
  }

  // ToString method for Sorcery
  @override
  String toString() {
    return 'Sorcery{id: $id, name: $name, image: $image, description: $description, type: $type, cost: $cost, slots: $slots, effects: $effects, requires: $requires}';
  }
}
