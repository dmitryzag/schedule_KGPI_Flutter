class Faculty {
  final String facultyName;
  final String facultyIcon;

  Faculty({required this.facultyName, required this.facultyIcon});
}

List<Faculty> faculties = [
  Faculty(
      facultyName:
          'Факультет физической культуры, естествознания и природопользования',
      facultyIcon: 'assets/images/ffkep.png'),
  Faculty(
      facultyName: 'Факультет информатики, математики и экономики',
      facultyIcon: 'assets/images/fime.png'),
  Faculty(
      facultyName: 'Факультет психологии и педагогики',
      facultyIcon: 'assets/images/fpp.png'),
  Faculty(
      facultyName: 'Факультет истории и права',
      facultyIcon: 'assets/images/fip.png'),
  Faculty(
      facultyName: 'Факультет филологии', facultyIcon: 'assets/images/ff.png'),
];
