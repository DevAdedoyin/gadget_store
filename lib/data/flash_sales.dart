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
        image: "https://cdn.pixabay.com/photo/2020/06/26/12/21/macbook-pro-5342546_960_720.png",
        discountedPrice: "£1,830.00",
        itemName:
            "Apple 2024 MacBook Pro Laptop M4 Pro chip",
        originalPrice: "£1,999.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/71iYG87OdGL._AC_UY218_.jpg",
        discountedPrice: "£1,399.00",
        itemName:
            "Galaxy Z Fold6 AI Smartphone, 256GB",
        originalPrice: "£1,799.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/51V8-16lsTL._AC_UY218_.jpg",
        discountedPrice: "£179.00",
        itemName:
            "Beats Studio Pro – Wireless Bluetooth",
        originalPrice: "£349.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/61Lpukr5+GL._AC_UY218_.jpg",
        discountedPrice: "£799.00",
        itemName:
            "iPhone 16 128 GB: 5G Mobile phone",
        originalPrice: "£899.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/71u5skhj5aL._AC_UY218_.jpg",
        discountedPrice: "£1,349.00",
        itemName:
            "Galaxy S24 Ultra, AI Android Smartphone",
        originalPrice: "£1449.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/61WiphT2PlL._AC_UY218_.jpg",
        discountedPrice: "£386.00",
        itemName: "PlayStation 5 Digital Edition Console",
        originalPrice: "£499.00"),
  ];
}
