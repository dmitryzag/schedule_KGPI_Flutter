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
