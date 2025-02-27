class ProductAttributeModel {
  ProductAttributeModel({this.name, this.values});

  final String? name;
  final List<String>? values;

  /// Empty function
  static ProductAttributeModel empty() =>
      ProductAttributeModel(name: "", values: [""]);

  /// To json
  Map<String, dynamic> toJson() {
    return {'name': name, 'values': values};
  }

  /// Convert JSON from firebase to a Model
  factory ProductAttributeModel.fromJson(Map<String, dynamic> data) {
    if (data.isEmpty) return ProductAttributeModel.empty();

    return ProductAttributeModel(
      name: data['name'],
      values: data['values'] != null ? List<String>.from(data['values']) : [],
    );
  }
}
