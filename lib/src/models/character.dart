class Character {
  final String id;
  final String name;
  final String status;
  final String species;
  final String image;

  // Constructeur
  const Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.image,
  });

  // fromJson pour la désérialisation
  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      image: json['image'] as String,
    );
  }

  // toJson pour la sérialisation
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'status': status,
      'species': species,
      'image': image,
    };
  }

  // Redéfinition de toString
  @override
  String toString() {
    return 'Character(id: $id, name: $name, status: $status, species: $species, image: $image)';
  }

  // Redéfinition de == et hashCode pour la comparaison
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Character) return false;
    return id == other.id &&
        name == other.name &&
        status == other.status &&
        species == other.species &&
        image == other.image;
  }

  @override
  int get hashCode {
    return Object.hash(id, name, status, species, image);
  }
}
