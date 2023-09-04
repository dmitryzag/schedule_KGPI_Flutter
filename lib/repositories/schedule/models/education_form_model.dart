class EducationFormModel {
  final int educationId;
  final String educationTitle;

  EducationFormModel({required this.educationId, required this.educationTitle});
}

List<Map<String, dynamic>> educationForms = [
  {
    "id": 1,
    "name": "Очная",
  },
  {
    "id": 2,
    "name": "Заочная",
  },
  {
    "id": 3,
    "name": "Очно-заочная",
  }
];

List<EducationFormModel> educationFormList = getEducationForms();

getEducationForms() {
  for (final educationForm in educationForms) {
    educationFormList.add(EducationFormModel(
      educationId: educationForm['id'],
      educationTitle: educationForm['name'],
    ));
  }
}
