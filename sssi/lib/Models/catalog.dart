class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String Image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.Image});
}

final products = [
  Item(
    id: "AakashPandey001",
    name: "Iphone 12 Pro",
    desc: "Apple iphone 12th generation",
    price: 999,
    color: "#33505a",
    Image: "",
  )
];
