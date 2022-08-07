class Item {
  final String courseName;
  final String description;
  final String imageURL;
  final int price;

  Item(
      {required this.courseName,
      required this.description,
      required this.imageURL,
      required this.price});
}

final Items = [
  Item(
      courseName: 'Dance',
      imageURL: 'assets/images/dance.png',
      price: 450,
      description:
          'Learn dance from the best of tutors and master it with the best of courses! Dance is an elective/PE/fine arts class that will teach students the fundamental techniques and vocabulary in many styles of dance. The students will also cover dance history and explore basic choreography. Emphasis will be placed on technique, movement skills, knowledge, history, and aesthetics of each dance style, while also learning components of health-related fitness. The dance class strives to promote a lifelong interest in both dance and physical fitness.'),
  Item(
      courseName: 'Piano',
      imageURL: 'assets/images/piano.png',
      price: 650,
      description:
          'Learn piano from the best of tutors and master it with the best of courses! Intent of course is the development of piano proficiency skills. Focus given to basic keyboard technique, score reading and performance, sight-reading, harmonization, accompanying, and transposition. Designed for music majors but is available to all students.'),
  Item(
      courseName: 'Guitar',
      imageURL: 'assets/images/guitar.png',
      price: 500,
      description:
          'Learn guitar from the best of tutors and master it with the best of courses! Guitar is a one-semester course covering the basics of the instrument and an application of essential music fundamentals. Students will learn the basics of playing guitar at a beginning level through studying music notation, chord symbols, and peer modeling.'),
  Item(
      courseName: 'Calligraphy',
      imageURL: 'assets/images/calligraphy.png',
      price: 550,
      description:
          'Learn calligraphy from the best of tutors and master it with the best of courses! Calligraphy is the design and execution of lettering with a different and unique instrumental. Teachers have sound experience in Calligraphy, Handwriting Improvement, Speed Writing, Graphology, and Illumination.'),
];
