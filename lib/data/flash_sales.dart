class FlashSales {
  final image;
  final itemName;
  final discountedPrice;
  final originalPrice;

  FlashSales(
      {required this.image,
      required this.discountedPrice,
      required this.itemName,
      required this.originalPrice});
}

class FlashSaleList {
  static final flashSales = [
    FlashSales(
        image: "https://m.media-amazon.com/images/I/618r76w5dGL._AC_UY218_.jpg",
        discountedPrice: "£1,830.00",
        itemName:
            "Apple 2024 MacBook Pro Laptop with M4 Pro chip with 12-core CPU and 16-core GPU",
        originalPrice: "£1,999.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/71iYG87OdGL._AC_UY218_.jpg",
        discountedPrice: "£1,399.00",
        itemName:
            "Galaxy Z Fold6 AI Smartphone, Unlocked Android Smartphone, 256GB Storage",
        originalPrice: "£1,799.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/51V8-16lsTL._AC_UY218_.jpg",
        discountedPrice: "£179.00",
        itemName:
            "Beats Studio Pro – Wireless Bluetooth Noise Cancelling Headphones",
        originalPrice: "£349.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/61Lpukr5+GL._AC_UY218_.jpg",
        discountedPrice: "£799.00",
        itemName:
            "iPhone 16 128 GB: 5G Mobile phone with Apple Intelligence, Camera Control, A18 Chip",
        originalPrice: "£899.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/71u5skhj5aL._AC_UY218_.jpg",
        discountedPrice: "£1,349.00",
        itemName:
            "Galaxy S24 Ultra, AI Android Smartphone, 12GB RAM, 512GB Storage, 200MP Camera",
        originalPrice: "£1449.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/61WiphT2PlL._AC_UY218_.jpg",
        discountedPrice: "£386.00",
        itemName: "PlayStation 5 Digital Edition Console (Disc Free)",
        originalPrice: "£499.00"),
  ];
}
