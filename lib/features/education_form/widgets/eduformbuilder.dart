import 'package:flutter/material.dart';
import 'package:schedule/features/education_form/widgets/eduforms.dart';
import 'package:schedule/repositories/schedule/models/education_form_model.dart';
import 'package:schedule/repositories/schedule/models/faculties.dart';
import 'package:schedule/repositories/schedule/schedule_repository.dart';

class EduFormBuilder extends StatelessWidget {
  const EduFormBuilder({
    super.key,
    required this.faculty,
  });
  final Faculty faculty;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: ScheduleRepository().getEducationForm().length,
      itemBuilder: (context, index) {
        EducationFormModel educationForm =
            ScheduleRepository().getEducationForm()[index];
        return EduForm(educationForm: educationForm, faculty: faculty);
      },
    );
  }
}
