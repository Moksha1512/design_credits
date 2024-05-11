// data.dart

class CategoryData {
  final String title;
  final String imagePath;
  final String detail1Title;
  final String detail1Content;
  final String detail2Title;
  final String detail2Content;
  final List<String> coreMembers;
  final String description;

  CategoryData({
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

List<CategoryData> categoriesData = [
  CategoryData(
    title: "Atliers",
    imagePath: 'images/Atliers.jpg',
    detail1Title: "Secretary",
    detail1Content: "Harshita Sehra\nPhone no: 9807602222",
    detail2Title: "Join Secretary",
    detail2Content: "Vidhi Jain\nPhone no: 8847608124",
    coreMembers: [
      "Chaital Ghan",
      "Deepanshu",
      "Chahat Baranwal",
      "Keshika Sharma",
      "Garvita",
      "Mitali Agrawal",
      "Abhiroop Bhavsar",
      "Pranavi",
      "Soumya Siri",
      "Avinash Kumar",
      "Salla Kaushik",
      "Divya Sankhala",
      "Amol Gaur",
      "Avula Thanu Shree",
      "Poras Singh",
      "Mukesh Kumar",
      "Suraj Chothe",
      "Rinku Kumari",
      "Suhani Agarwal",
      "Yuvraj Saran",
      "Shivangi Mehra",
      "Sanika Narmitwar",
      "Vindhya Jain",
    ],
    description: "The Fine Arts and Crafts Society, i.e., Ateliers, provides an opportunity for everybody to explore their inner artist. It is an open and fun-loving club where one can explore different art forms ranging from watercolors, acrylic/oil painting, or pastels to face painting, crafts, posters, and many more. Several sessions and competitions are also conducted at regular intervals to maintain a healthy interactive environment where students can explore their inner artists.",
  ),
  CategoryData(
    title: "Designerds",
    imagePath: 'images/Designerds.jpg',
    detail1Title: "Lead Designer",
    detail1Content: "John Designer\nPhone no: 1234567890",
    detail2Title: "Co-Lead Designer",
    detail2Content: "Jane Designer\nPhone no: 9876543210",
    coreMembers: [
      "Designer1",
      "Designer2",
      "Random Designer 1",
      "Random Designer 2",
    ],
    description: "Designerds is a club where design meets tech, fostering creativity and collaboration. Engage in hands-on design workshops, tech talks, and hackathons. Connect with industry experts, showcase your work, and participate in collaborative projects. Whether you're into graphic design, UX/UI, or tech innovation, Designerds is where your passion finds its community. Join us and redefine the future of design together!",
  ),
  CategoryData(
    title: "Dramebaaz",
    imagePath: 'images/Dramebaaz.jpg',
    detail1Title: "Lead Actor",
    detail1Content: "John Actor\nPhone no: 1234567890",
    detail2Title: "Co-Lead Actor",
    detail2Content: "Jane Actor\nPhone no: 9876543210",
    coreMembers: [
      "Actor1",
      "Actor2",
      "Random Actor 1",
      "Random Actor 2",
    ],
    description: "Dramebaaz is the stage where acting talents shine! Join us for captivating performances, acting workshops, and drama productions. Connect with fellow actors, showcase your talent, and participate in exciting theatrical events. Whether you're into classical drama or contemporary plays, Dramebaaz is your platform to express, emote, and entertain. Join us and let the drama unfold!",
  ),
  CategoryData(
    title: "Framex",
    imagePath: 'images/FrameX.png',
    detail1Title: "Random Detail 1",
    detail1Content: "Random Content 1",
    detail2Title: "Random Detail 2",
    detail2Content: "Random Content 2",
    coreMembers: [
      "Random Member 1",
      "Random Member 2",
      "Random Member 3",
    ],
    description: "Where stories come to life! Dive into the world of filmmaking with workshops, scriptwriting sessions, and hands-on film projects. Connect with fellow filmmakers, showcase your creations, and collaborate on cinematic ventures. From directing to editing, FrameX is your reel community. Unleash your creativity and be part of the filmic adventure! Join FrameX and let's script, shoot, and share the magic of cinema together!",
  ),
  CategoryData(
    title: "Shutterbuggs",
    imagePath: 'images/Shutterbuggs.png',
    detail1Title: "Random Detail 1",
    detail1Content: "Random Content 1",
    detail2Title: "Random Detail 2",
    detail2Content: "Random Content 2",
    coreMembers: [
      "Random Photographer 1",
      "Random Photographer 2",
      "Random Photographer 3",
    ],
    description: "Capturing moments, creating memories. Join us for photography workshops, photo walks, and creative challenges. Connect with fellow shutterbugs, showcase your shots, and learn new techniques. Whether you're into portraits, landscapes, or experimental shots, Shutterbuggs is your lens to the world. Let's frame the story together! Join now and explore the art of visual storytelling with Shutterbuggs.",
  ),
  CategoryData(
    title: "TheGrooveTheory",
    imagePath: 'images/TheGrooveTheory.jpg',
    detail1Title: "Random Detail 1",
    detail1Content: "Random Content 1",
    detail2Title: "Random Detail 2",
    detail2Content: "Random Content 2",
    coreMembers: [
      "Random Member 1",
      "Random Member 2",
      "Random Member 3",
    ],
    description: " Where rhythm meets expression! Dive into dance workshops, choreography sessions, and electrifying performances. Connect with fellow dancers, showcase your moves, and join in on exciting dance battles. From hip-hop to contemporary, The Groove Theory is your dance haven. Let's dance, connect, and bring the beats to life together! Join us and be part of the rhythm revolution.",
  ),
  CategoryData(
    title: "Sangam",
    imagePath: 'images/sangam.png',
    detail1Title: "Random Detail 1",
    detail1Content: "Random Content 1",
    detail2Title: "Random Detail 2",
    detail2Content: "Random Content 2",
    coreMembers: [
      "Random Member 1",
      "Random Member 2",
      "Random Member 3",
    ],
    description: "Sangam, our music club, harmonizes passion and talent. Join us for jam sessions, songwriting workshops, and open mics. Connect with fellow musicians, showcase your compositions, and collaborate on musical projects. Whether you're into rock, pop, or experimental sounds, Sangam is your stage to share, learn, and make music magic. Embrace the rhythm and join Sangam for an unforgettable musical journey!",
  ),
  CategoryData(
    title: "RAW",
    imagePath: 'images/raw.png',
    detail1Title: "Random Detail 1",
    detail1Content: "Random Content 1",
    detail2Title: "Random Detail 2",
    detail2Content: "Random Content 2",
    coreMembers: [
      "Random Member 1",
      "Random Member 2",
      "Random Member 3",
    ],
    description: "Elevate your live streaming game! Join us for dynamic sessions on content creation, tech setups, and audience engagement. Connect with fellow streamers, showcase your live content, and participate in interactive challenges. Whether you're into gaming, vlogging, or tutorials, RAW is your platform. Let's go live, share experiences, and amplify your streaming journey together! Join RAW and unleash the power of live content creation.",
  ),
];
