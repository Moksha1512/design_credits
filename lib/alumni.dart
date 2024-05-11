// data.dart

class AlumniCategoryData {
  final String title;
  final String imagePath;
  final String detail1Title;
  final String detail1Content;
  final String detail2Title;
  final String detail2Content;
  final List<String> coreMembers;
  final String description;

  AlumniCategoryData({
    required this.title,
    required this.imagePath,
    required this.detail1Title,
    required this.detail1Content,
    required this.detail2Title,
    required this.detail2Content,
    required this.coreMembers,
    required this.description,
  });
}

List<AlumniCategoryData> categoriesData = [
  AlumniCategoryData(
    title: "Random Society",
    imagePath: 'images/IITJ_logo.png',
    detail1Title: "Random Detail 1",
    detail1Content: "Random Content 1",
    detail2Title: "Random Detail 2",
    detail2Content: "Random Content 2",
    coreMembers: [
      "Random Member 1",
      "Random Member 2",
      "Random Member 3",
    ],
    description: "Not all those who wander are lost.",
  ),
];
