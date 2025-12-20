import 'itemInBox.dart';

class ViewList {
  String imgUrl;
  String imgLable;
  String detail;
  List<itemInBox> itemInBoxs;
  double price;

  ViewList(
    this.imgUrl,
    this.imgLable,
    this.detail,
    this.itemInBoxs,
    this.price,
  );

  static List<ViewList> samples = [
    ViewList(
      "assets/images/Gyroor C1S.jpg",
      "Gyroor C1S",
      "A stylish sit-down electric scooter featuring a powerful 450W motor and a convenient rear basket for urban commuting.",
      [
        itemInBox(name: "Gyroor C1S Scooter", quantity: 1, unit: "Unit"),
        itemInBox(name: "Rear Basket", quantity: 1, unit: "Piece"),
        itemInBox(name: "Charger", quantity: 1, unit: "Piece"),
        itemInBox(name: "User Manual", quantity: 1, unit: "Book"),
        itemInBox(name: "Assembly Tool Kit", quantity: 1, unit: "Set"),
      ],
      15000.00,
    ),
    ViewList(
      "assets/images/Ninebot by Segway KickScooter F2 Series.jpg",
      "Ninebot F2 Series",
      "Engineered for performance with a high-capacity battery, dual braking system, and integrated turn signals for maximum safety.",
      [
        itemInBox(name: "Ninebot F2 Scooter", quantity: 1, unit: "Unit"),
        itemInBox(name: "Power Cord", quantity: 1, unit: "Piece"),
        itemInBox(name: "Valve Stem Extension", quantity: 1, unit: "Piece"),
        itemInBox(name: "M5 Screw", quantity: 5, unit: "Piece"),
        itemInBox(name: "Allen Key", quantity: 1, unit: "Piece"),
      ],
      15000.00,
    ),
    ViewList(
      "assets/images/Ninebot D18W.jpg",
      "Ninebot D18W",
      "The perfect entry-level companion offering a lightweight foldable design and an 18km range for quick city hops.",
      [
        itemInBox(name: "Ninebot D18W Scooter", quantity: 1, unit: "Unit"),
        itemInBox(name: "Battery Charger", quantity: 1, unit: "Piece"),
        itemInBox(name: "User Manual", quantity: 1, unit: "Book"),
        itemInBox(name: "Hex Wrench", quantity: 1, unit: "Piece"),
        itemInBox(name: "Screw", quantity: 4, unit: "Piece"),
      ],
      15000.00,
    ),
    ViewList(
      "assets/images/Ninebot E2 Plus II.jpg",
      "Ninebot E2 Plus II",
      "Features a large dashboard and ultra-thin footboard design, providing a smooth and stable ride with maintenance-free hollow tires.",
      [
        itemInBox(name: "Ninebot E2 Plus II", quantity: 1, unit: "Unit"),
        itemInBox(name: "Power Adapter", quantity: 1, unit: "Piece"),
        itemInBox(name: "Allen Key", quantity: 1, unit: "Piece"),
        itemInBox(name: "M5 Screw", quantity: 6, unit: "Piece"),
      ],
      15000.00,
    ),
    ViewList(
      "assets/images/Ninebot E3.jpg",
      "Ninebot E3",
      "A robust performance model designed for longer distances, boasting enhanced hill-climbing capabilities and a sleek aerodynamic frame.",
      [
        itemInBox(name: "Ninebot E3 Scooter", quantity: 1, unit: "Unit"),
        itemInBox(name: "Fast Charger", quantity: 1, unit: "Piece"),
        itemInBox(name: "NFC Key Card", quantity: 2, unit: "Card"),
        itemInBox(name: "User Manual", quantity: 1, unit: "Book"),
      ],
      15000.00,
    ),
    ViewList(
      "assets/images/Ninebot F3.jpg",
      "Ninebot F3",
      "Combines a 30km extended range with a resilient carbon structural steel frame, built to endure the rigors of daily use.",
      [
        itemInBox(name: "Ninebot F3 Scooter", quantity: 1, unit: "Unit"),
        itemInBox(name: "Battery Charger", quantity: 1, unit: "Piece"),
        itemInBox(name: "Spare Tire", quantity: 1, unit: "Piece"),
        itemInBox(name: "T-shape Allen Key", quantity: 1, unit: "Piece"),
        itemInBox(name: "Screw", quantity: 5, unit: "Piece"),
      ],
      15000.00,
    ),
  ];
}
