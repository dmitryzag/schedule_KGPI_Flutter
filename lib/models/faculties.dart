Map<int, String> facultyIcons = {
  16: 'assets/images/ff.png',
  17: 'assets/images/ffkep.png',
  18: 'assets/images/fip.png',
  19: 'assets/images/fime.png',
  29: 'assets/images/fpp.png',
};

class Faculty {
  final int facultyId;
  final String facultyName;
  Faculty({required this.facultyId, required this.facultyName});
  String? getIconFaculty(facultyId) {
    return facultyIcons[facultyId];
  }
}

// List<Faculty> faculties = [
//   Faculty(
//       facultyName:
//           'Факультет физической культуры, естествознания и природопользования',
//       facultyIcon: 'assets/images/ffkep.png'),
//   Faculty(
//       facultyName: 'Факультет информатики, математики и экономики',
//       facultyIcon: 'assets/images/fime.png'),
//   Faculty(
//       facultyName: 'Факультет психологии и педагогики',
//       facultyIcon: 'assets/images/fpp.png'),
//   Faculty(
//       facultyName: 'Факультет истории и права',
//       facultyIcon: 'assets/images/fip.png'),
//   Faculty(
//       facultyName: 'Факультет филологии', facultyIcon: 'assets/images/ff.png'),
// ];
