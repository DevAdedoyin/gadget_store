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
        "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734682638/removal.ai__04a16d7b-a448-446e-8ff4-0600b60adf99-mac_pfbpqk.png",
        imageList: [
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734682638/removal.ai__04a16d7b-a448-446e-8ff4-0600b60adf99-mac_pfbpqk.png",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734688484/removal.ai__fb921a32-381b-4947-93f6-299400333720--s768x768-fwebp_vtsgkp.png",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734682637/removal.ai__050cd28f-4df0-4f01-ba6f-062618662f0a-apple-macbook-pro-m4-lineup_big-jpg-large_gmgzyi.png",
        ],
        discountedPrice: "£1,830.00",
        itemName: "Apple 2024 MacBook Pro Laptop M4 Pro chip",
        originalPrice: "£1,999.00"),
    FlashSales(
        image: "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734688698/samsung-galaxy-fold6-navy-512gb-desktop1-gan-WebP-Format-488_fhgqzw.webp",
        imageList: [
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734688698/samsung-galaxy-fold6-navy-512gb-desktop1-gan-WebP-Format-488_fhgqzw.webp",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734685511/samsung-galaxy-fold6-silver-256gb-desktop3-WebP-Format-488_wjugoa.webp",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734685511/samsung-galaxy-fold6-512GB-silver-desktop1-WebP-Format-488_anqwrg.webp",
        ],
        discountedPrice: "£1,399.00",
        itemName: "Galaxy Z Fold6 AI Smartphone, 256GB",
        originalPrice: "£1,799.00"),
    FlashSales(
        image: "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734686082/removal.ai__7802a7e0-81f2-4e3a-a475-beaf43e4e156-pc-studiopro-black-wired_ov2kve.png",
        imageList: [
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734686082/removal.ai__7802a7e0-81f2-4e3a-a475-beaf43e4e156-pc-studiopro-black-wired_ov2kve.png",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734686082/removal.ai__502bb431-b6db-4099-8d7b-196554c082e0-pc-studiopro-black-side_p6qzxy.png",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734686081/removal.ai__0c611cd5-96c0-4f40-ba15-3f3f9c1999be-pc-studiopro-black-folded_w1n38k.png",
        ],
        discountedPrice: "£179.00",
        itemName: "Beats Studio Pro – Wireless Bluetooth",
        originalPrice: "£349.00"),
    FlashSales(
        image: "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687175/iPhone-16-Black-Front-Desktop-WebP-Format-488_nzbs4a.webp",
        imageList: [
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687175/iPhone-16-Black-Front-Desktop-WebP-Format-488_nzbs4a.webp",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687177/iPhone-16-Black-Side-Desktop-WebP-Format-488_h9sdlz.webp",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687174/iPhone-16-Black-Back-Desktop-WebP-Format-488_m1c029.webp",
        ],
        discountedPrice: "£799.00",
        itemName: "iPhone 16 128 GB: 5G Mobile phone",
        originalPrice: "£899.00"),
    FlashSales(
        image: "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687485/samsung-galaxy-s24-ultra-5g-gan-256gb-titanium-violet-desktop-detail-1-WebP-Format-488_hvvkl4.webp",
        imageList: [
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687485/samsung-galaxy-s24-ultra-5g-gan-256gb-titanium-violet-desktop-detail-1-WebP-Format-488_hvvkl4.webp",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687483/samsung-galaxy-s24-ultra-5g-256gb-titanium-violet-desktop-detail-3-WebP-Format-488_rcxqih.webp",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687483/samsung-galaxy-s24-ultra-5g-1tb-titanium-violet-desktop-detail-4-WebP-Format-488_mnurzk.webp",
        ],
        discountedPrice: "£1,349.00",
        itemName: "Galaxy S24 Ultra, AI Android Smartphone",
        originalPrice: "£1449.00"),
    FlashSales(
        image: "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687880/-S768x768-FWEBP2_kppyr8.webp",
        imageList: [
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687880/-S768x768-FWEBP2_kppyr8.webp",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687878/-S768x768-FWEBP1_bip2bg.webp",
          "https://res.cloudinary.com/dcgjsxhub/image/upload/v1734687878/-S768x768-FWEBP_z8ec5w.webp",
        ],
        discountedPrice: "£386.00",
        itemName: "PlayStation 5 Digital Edition Console",
        originalPrice: "£499.00"),
  ];
}
