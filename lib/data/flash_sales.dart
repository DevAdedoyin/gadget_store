class FlashSales {
  final image;
  final itemName;
  final discountedPrice;
  final originalPrice;
  final imageList;

  FlashSales({
    required this.image,
    required this.discountedPrice,
    required this.itemName,
    required this.originalPrice,
    required this.imageList,
  });
}

class FlashSaleList {
  static final flashSales = [
    FlashSales(
        image:
            "https://cdn.pixabay.com/photo/2020/06/26/12/21/macbook-pro-5342546_960_720.png",
        imageList: [
          "https://cdn.pixabay.com/photo/2020/06/26/12/21/macbook-pro-5342546_960_720.png",
          "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp14-spaceblack-select-202410?wid=904&hei=840&fmt=jpeg&qlt=95&.v=1728916305295",
          "https://media.very.co.uk/i/very/WBUYA_SQ1_0000000976_MIDNIGHT_SLf?\$roundel_very\$&p1_img=blank_apple&\$plp_360x480_x1\$&fmt=webp",
        ],
        discountedPrice: "£1,830.00",
        itemName: "Apple 2024 MacBook Pro Laptop M4 Pro chip",
        originalPrice: "£1,999.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/71iYG87OdGL._AC_UY218_.jpg",
        imageList: [
          "https://m.media-amazon.com/images/I/71iYG87OdGL._AC_UY218_.jpg",
          "https://www.backmarket.co.uk/cdn-cgi/image/format%3Dauto%2Cquality%3D75%2Cwidth%3D640/https://d2e6ccujb3mkqf.cloudfront.net/3aac475e-8d4d-43fa-82b3-09eeadf39d60-1_145cd3ff-20cb-4a95-9d83-5503924c10fc.jpg",
          "https://www.backmarket.co.uk/cdn-cgi/image/format%3Dauto%2Cquality%3D75%2Cwidth%3D640/https://d2e6ccujb3mkqf.cloudfront.net/3aac475e-8d4d-43fa-82b3-09eeadf39d60-3_eccdf530-a702-4c82-a72d-9a220218edd3.jpg",
        ],
        discountedPrice: "£1,399.00",
        itemName: "Galaxy Z Fold6 AI Smartphone, 256GB",
        originalPrice: "£1,799.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/51V8-16lsTL._AC_UY218_.jpg",
        imageList: [
          "https://m.media-amazon.com/images/I/51V8-16lsTL._AC_UY218_.jpg",
          "https://dam.ee.co.uk/image/786263124743/image_1kjul65at1337bu0g6q2vpmb3b/-S768x768-FWEBP",
          "https://dam.ee.co.uk/image/786263124743/image_5j9f47j17160valdna268hhu16/-S768x768-FWEBP",
        ],
        discountedPrice: "£179.00",
        itemName: "Beats Studio Pro – Wireless Bluetooth",
        originalPrice: "£349.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/61Lpukr5+GL._AC_UY218_.jpg",
        imageList: [
          "https://m.media-amazon.com/images/I/61Lpukr5+GL._AC_UY218_.jpg",
          "https://www.apple.com/euro/iphone-16/a/screens_alt/images/overview/product-viewer/iphone/all_colors__flhn5cmb1t26_large.jpg",
          "https://dam.ee.co.uk/image/786263124743/image_197g85j2rt4nncf2rkrbpkrm0l/-S768x768-FWEBP",
        ],
        discountedPrice: "£799.00",
        itemName: "iPhone 16 128 GB: 5G Mobile phone",
        originalPrice: "£899.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/71u5skhj5aL._AC_UY218_.jpg",
        imageList: [
          "https://m.media-amazon.com/images/I/71u5skhj5aL._AC_UY218_.jpg",
          "https://images.samsung.com/is/image/samsung/assets/uk/smartphones/galaxy-s24-ultra/buy/01_S24Ultra-Group-KV_PC.jpg?imbypass=true",
          "https://images.samsung.com/is/image/samsung/assets/uk/smartphones/galaxy-s24-ultra/buy/02_S24Ultra-Group-KV_Exclusive-PC.jpg?imbypass=true",
        ],
        discountedPrice: "£1,349.00",
        itemName: "Galaxy S24 Ultra, AI Android Smartphone",
        originalPrice: "£1449.00"),
    FlashSales(
        image: "https://m.media-amazon.com/images/I/61WiphT2PlL._AC_UY218_.jpg",
        imageList: [
          "https://m.media-amazon.com/images/I/71u5skhj5aL._AC_UY218_.jpg",
          "https://media.4rgos.it/i/Argos/4709888_R_Z002A?w=1500&h=880&qlt=70&fmt=webp",
          "https://media.4rgos.it/i/Argos/4709888_R_Z004A?w=1500&h=880&qlt=70&fmt=webp",
        ],
        discountedPrice: "£386.00",
        itemName: "PlayStation 5 Digital Edition Console",
        originalPrice: "£499.00"),
  ];
}
