Map<int, String> facultyIcons = {
  16: 'assets/images/ff.png',
  17: 'assets/images/ffkep.png',
  18: 'assets/images/fip.png',
  19: 'assets/images/fime.png',
  29: 'assets/images/fpp.png',
};

Map<int, String> facultyAbbr = {
  16: 'ФФ',
  17: 'ФФКЕП',
  18: 'ФИП',
  19: 'ФИМЭ',
  29: 'ФПП',
};

class Faculty {
  final int facultyId;
  final String facultyName;
  Faculty({required this.facultyId, required this.facultyName});
  String? getAbbr() {
    return facultyAbbr[facultyId];
  }

  String? getIconFaculty() {
    return facultyIcons[facultyId];
  }
}
