// data.dart

class ExtraData {
  final String title;
  final String imagePath;
  final List<String> names;
  final List<String> locations;
  final List<String>? images;

  ExtraData({
    required this.title,
    required this.imagePath,
    required this.names,
    required this.locations,
    this.images,
  });
}

List<ExtraData> caExtraData = [
  ExtraData(
    title: "Eateries",
    imagePath: 'images/eateries.jpg',
    names: ["Shamiyana", "Canteen"],
    locations: [
      "Near Bio Department Building",
      "2nd Floor, New Mess Building, G-lane",
    ],
    images: ["images/img1.jpg", "images/img2.jpg", "images/img3.jpg", "images/img4.jpg", "images/img5.jpg", "images/img6.jpg", "images/img7.jpg"],
  ),
  ExtraData(
    title: "ATM",
    imagePath: 'images/atm.png',
    names: ["ATM1", "ATM2", "ATM3"],
    locations: [
      "Outside of LHC building",
      "At Admin building",
      " At Kendriya Bhandar",
    ],
  ),
  ExtraData(
    title: "Hospital",
    imagePath: 'images/hospital.png',
    names: ["PHC (Primary Health Centre)"],
    locations: [
      "Starting opposite from football ground, just when you cross the berms road, take a right and move straight. It is situated on the left at some distance.",
    ],
  ),
  ExtraData(
    title: "Temple",
    imagePath: 'images/temple.png',
    names: ["temple"],
    locations: [
      "In outer circle",
    ],
  ),
  ExtraData(
    title: "Bank",
    imagePath: 'images/Bank.jpg',
    names: ["Banks"],
    locations: [
      "SBI at Kendriya Bhandar",
    ],
  ),
  ExtraData(
    title: "Groceries",
    imagePath: 'images/grocery-store_14786067.png',
    names: ["S-Mart","Kendriya Bhandar"],
    locations: [
      "Just Behind the Faculy quaters in the berms road near Jodhpur Club",
      "It is located in the Type-C quaters and may be reached by turning left from the main entrance facing the knowledge tree, then right after some distance.",
    ],
  ),
  ExtraData(
    title: "Salon",
    imagePath: 'images/salon_1057369.png',
    names: ["Salon","Parlour"],
    locations: [
      "It is located in the berms just before the stationary shop",
      "It is located in the berms just before the stationary shop",
    ],
  ),
  ExtraData(
    title: "Stationary",
    imagePath: 'images/stationery_3361435.png',
    names: ["Stationary Shop"],
    locations: [
      "It is located in the berms just before laundary",
    ],
  ),
  ExtraData(
    title: "Laundary",
    imagePath: 'images/laundry-machine_3322854.png',
    names: ["Laundary"],
    locations: [
      "It is located in adjacent berms just after the stationary shop",
    ],
  ),
  ExtraData(
    title: "Cycle Repair",
    imagePath: 'images/cycle_repair.jpg',
    names: ["Cycle shop"],
    locations: [
      " It is located in the vacant space in front of O4 hostel ",
    ],
  ),
];
