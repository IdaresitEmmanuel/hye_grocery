import 'dart:convert';

class Product {
  final String id;
  final String name;
  final String description;
  final double rating;
  final double price;
  final String imageUrl;
  final String storageLocation;
  final String category;
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.rating,
    required this.price,
    required this.imageUrl,
    required this.storageLocation,
    required this.category,
  });

  Product copyWith({
    String? id,
    String? name,
    String? description,
    double? rating,
    double? price,
    String? imageUrl,
    String? storageLocation,
    String? category,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      rating: rating ?? this.rating,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      storageLocation: storageLocation ?? this.storageLocation,
      category: category ?? this.category,
    );
  }

  factory Product.empty() => Product(
      id: "",
      name: "",
      description: "",
      rating: 0,
      price: 0,
      imageUrl: "",
      storageLocation: "",
      category: "");

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'rating': rating,
      'price': price,
      'image_url': imageUrl,
      'storage_location': storageLocation,
      'category': category,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      rating: map['rating']?.toDouble() ?? 0.0,
      price: map['price']?.toDouble() ?? 0.0,
      imageUrl: map['image_url'] ?? '',
      storageLocation: map['storage_location'] ?? '',
      category: map['category'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, rating: $rating, price: $price, imageUrl: $imageUrl, storageLocation: $storageLocation, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.rating == rating &&
        other.price == price &&
        other.imageUrl == imageUrl &&
        other.storageLocation == storageLocation &&
        other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        rating.hashCode ^
        price.hashCode ^
        imageUrl.hashCode ^
        storageLocation.hashCode ^
        category.hashCode;
  }
}
