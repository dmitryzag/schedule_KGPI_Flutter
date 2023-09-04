import 'package:schedule/repositories/schedule/models/academic_group.dart';
import 'package:schedule/repositories/schedule/models/education_form_model.dart';
import 'package:schedule/repositories/schedule/models/faculties.dart';
import 'package:schedule/repositories/schedule/models/schedule_group.dart';

abstract class AbstractScheduleRepository {
  Future<List<Faculty>> getFaculties();
  List<EducationFormModel> getEducationForm();
  Future<List<AcademicGroup>> getAcademicGroup([
    course,
    educationForm,
    faculty,
  ]);
  Future<List<ScheduleGroup>> getScheduleGroup(AcademicGroup academicGroup);
}
