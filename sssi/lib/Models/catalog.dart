class CatalogModel {
  static final items = [
    Item(
      id: "AakashPandey001",
      name: "Iphone 12 Pro",
      desc: "Apple iphone 12th generation",
      price: 999,
      color: "#33505a",
      Image:
          "https://scontent.fktm13-1.fna.fbcdn.net/v/t45.5328-4/348202864_9833806176644332_8752578739996098225_n.jpg?stp=dst-jpg_s960x960&_nc_cat=108&ccb=1-7&_nc_sid=1a0e84&_nc_ohc=ZKBYSeEpHiAAX-qsxtJ&_nc_ht=scontent.fktm13-1.fna&oh=00_AfAEdIHDsjnVLXI_rTBeC171rR-WSLk2LfBFW0PWfghDXQ&oe=64F7FE58",
    )
  ];
}

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
