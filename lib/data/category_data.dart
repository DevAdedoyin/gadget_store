
import 'package:gadget_store/screens/dashboard/dashboard_tabs/catalog.dart';

class Category {
  final String categoryName;
  final String categoryImageLink;

  Category({required this.categoryName, required this.categoryImageLink});
}

class CategoryList {
  static final categoryItems =  [
    Category(categoryName: "Smartphones", categoryImageLink: "https://cdn.pixabay.com/photo/2016/07/30/19/33/smartphone-1557796_960_720.png"),
    Category(categoryName: "Wearables", categoryImageLink: "https://cdn.pixabay.com/photo/2016/03/31/15/28/device-1293326_960_720.png"),
    Category(categoryName: "Audio", categoryImageLink: "https://cdn.pixabay.com/photo/2014/06/23/17/03/headphones-375341_960_720.png"),
    Category(categoryName: "Computing", categoryImageLink: "https://cdn.pixabay.com/photo/2012/04/13/20/24/laptop-33521_960_720.png"),
    Category(categoryName: "Automation", categoryImageLink: "https://cdn.pixabay.com/photo/2013/07/13/09/46/surveillance-155982_960_720.png"),
    Category(categoryName: "Gaming", categoryImageLink: "https://cdn.pixabay.com/photo/2012/04/18/23/22/joystick-38228_960_720.png"),
    Category(categoryName: "Cameras", categoryImageLink: "https://cdn.pixabay.com/photo/2012/04/13/17/00/camera-32871_960_720.png"),
    Category(categoryName: "Health", categoryImageLink: "https://cdn.pixabay.com/photo/2012/04/18/12/07/thermometer-36852_960_720.png"),
  ];
}