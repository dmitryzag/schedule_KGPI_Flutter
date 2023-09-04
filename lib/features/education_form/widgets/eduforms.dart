import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule/repositories/schedule/models/education_form_model.dart';
import 'package:schedule/repositories/schedule/models/faculties.dart';
import 'package:schedule/router/router.dart';
import 'package:schedule/theme/custom_icons.dart';

class EduForm extends StatelessWidget {
  const EduForm({
    super.key,
    required this.educationForm,
    required this.faculty,
  });

  final EducationFormModel educationForm;
  final Faculty faculty;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          borderRadius: BorderRadius.circular(13),
          onTap: () {
            AutoRouter.of(context).push(SpecialitiesRoute(
                educationForm: educationForm, faculty: faculty));
          },
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  educationForm.educationTitle,
                  style: const TextStyle(fontSize: 17),
                ),
                const Icon(CustomIcons.chevron_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
