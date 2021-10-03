class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 pro",
      desc: "Apple iPhone 12th generation",
      price: 99999,
      color: "#33505a",
      image:
          "https://shop.jtglobal.com/wp-content/uploads/2020/10/iphone-12-blue.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
