String kGetPercentSale({required num price, required num salePrice}) {
  final percent = ((salePrice / price) * 100);
  final off = (100 - percent).ceil();

  return "$off%";
}
