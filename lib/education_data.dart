// data.dart

class EducationCategoryData {
  final String title;
  final String imagePath;
  final String description;
  final String detail1Title;
  final String detail1Content;
  final String detail2Title;
  final String detail2Content;

  EducationCategoryData({
    required this.title,
    required this.imagePath,
    required this.description,
    required this.detail1Title,
    required this.detail1Content,
    required this.detail2Title,
    required this.detail2Content,
  });
}

List<EducationCategoryData> educationCategoriesData = [
  EducationCategoryData(
    title: "Devlup Labs",
    imagePath: 'images/devluplabs.png',
    description:
        "Coding Club is the hub for coding enthusiasts to come together, learn, and collaborate on coding projects. Led by John CodeMaster, our Coding Club explores various programming languages, algorithms, and software development practices. Jane CodeExpert, our co-leader, brings expertise in web development and cybersecurity.",
    detail1Title: "Coding Club President",
    detail1Content: "John CodeMaster\nPhone no: 1234567890",
    detail2Title: "Co-President",
    detail2Content: "Jane CodeExpert\nPhone no: 9876543210",
  ),
  EducationCategoryData(
    title: "Raid",
    imagePath: 'images/raid.png',
    description:
        "Mathematics Society is the place for math enthusiasts to dive deep into the world of numbers, equations, and theorems. Led by John MathWizard, our society explores various branches of mathematics through interactive sessions and problem-solving. Jane MathGenius, our co-leader, specializes in discrete mathematics and calculus.",
    detail1Title: "Mathematics Society President",
    detail1Content: "John MathWizard\nPhone no: 1234567890",
    detail2Title: "Co-President",
    detail2Content: "Jane MathGenius\nPhone no: 9876543210",
  ),
];
