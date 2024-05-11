class SchoolData {
  final String title;
  final String description;
  final String link;
  final String location;

  SchoolData({
    required this.title,
    required this.description,
    required this.link,
    required this.location,
  });
}

List<SchoolData> schoolDataList = [
  SchoolData(
    title: "School of Management & Entrepreneurship - IIT Jodhpur",
    description: "Description of School of Management & Entrepreneurship",
    link: "https://iitj.ac.in/schools/index.php",
    location: "Building M, Room 303",
  ),
  SchoolData(
    title: "School of Artificial Intelligence & Data Science",
    description: "Description of School of Artificial Intelligence & Data Science",
    link: "https://aide.iitj.ac.in/",
    location: "Building A, Room 505",
  ),
  SchoolData(
    title: "SCHOOL OF LIBERAL ARTS",
    description: "Description of School of Liberal Arts",
    link: "https://sola.iitj.ac.in/",
    location: "Building L, Room 202",
  ),
  SchoolData(
    title: "School of Design",
    description: "Description of School of Design",
    link: "https://iitj.ac.in/school-of-design/",
    location: "Building D, Room 101",
  ),
];
