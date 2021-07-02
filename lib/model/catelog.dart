class CatelogModel {
  static final items = [
    Item(
      id: 1,
      name: "iphone12 ",
      desc: "apple product",
      price: 599,
      img: "https://pngimg.com/uploads/iphone_12/iphone_12_PNG8.png",
      color: "#005f73",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String img;
  final String color;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.img,
      required this.color});
}
