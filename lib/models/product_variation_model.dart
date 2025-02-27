class ProductVariationModel {
  ProductVariationModel(
      {required this.id,
      required this.image,
      required this.stock,
      required this.price,
      required this.attributeValues});

  final String id, image;
  final int stock, price;
  final Map<String, String> attributeValues;

  static ProductVariationModel empty() => ProductVariationModel(
      id: "", attributeValues: {}, image: '', stock: 0, price: 0);

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "attributeValues": attributeValues,
    };
  }

  /// Convert JSON from firebase to Model
  factory ProductVariationModel.fromJson(Map<String, dynamic> data) {
    if (data.isEmpty) return ProductVariationModel.empty();

    return ProductVariationModel(
      id: data['id'],
      price: data['price'],
      image: data['image'],
      stock: data['stock'],
      attributeValues: Map<String, String>.from(
        data['attributeValues'],
      ),
    );
  }
}
