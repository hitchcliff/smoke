
class ProductVariationModel {
  ProductVariationModel({
    required this.id,
    required this.image,
    required this.stock,
    required this.price,
    required this.salePrice,
    required this.attributeValues,
  });

  final String id, image;

  final int stock;
  final double price, salePrice;
  final Map<String, String> attributeValues;

  static ProductVariationModel empty() => ProductVariationModel(
      id: "", attributeValues: {}, image: '', stock: 0, price: 0, salePrice: 0);

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "attributeValues": attributeValues,
      "image": image,
      "stock": stock,
      "price": price,
      "salePrice": salePrice,
    };
  }

  /// Convert JSON from firebase to Model
  factory ProductVariationModel.fromJson(Map<String, dynamic> data) {
    if (data.isEmpty) return ProductVariationModel.empty();

    return ProductVariationModel(
      id: data['id'],
      price: data['price'] ?? 0,
      image: data['image'],
      stock: data['stock'],
      attributeValues: Map<String, String>.from(
        data['attributeValues'],
      ),
      salePrice: data['salePrice'] ?? 0,
    );
  }
}
