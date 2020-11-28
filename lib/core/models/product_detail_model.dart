class ProductDetailModel {
  final String productName;
  final double price;
  final double oldPrice;
  final String productDetails;
  final List<String> sizes;
  final List<int> colors;
  final List<String> productImages;

  ProductDetailModel(this.productName, this.price, this.productDetails,
      this.sizes, this.colors, this.productImages, this.oldPrice);
}
