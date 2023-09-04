import 'package:dio/dio.dart';
import 'package:schedule/repositories/schedule/models/academic_group.dart';
import 'package:schedule/repositories/schedule/models/faculties.dart';
import 'package:schedule/repositories/schedule/abstract_schedule_repository.dart';
import 'package:schedule/repositories/schedule/models/schedule_group.dart';

import 'models/education_form_model.dart';

class ScheduleRepository implements AbstractScheduleRepository {
  final dio = Dio();

  @override
  Future<List<Faculty>> getFaculties() async {
    try {
      final response = await dio.get(
        'https://schedule-api.nbikemsu.ru/hierarchy/faculties/?format=json',
        options: Options(headers: {'Accept': 'application/json'}),
      );
      final data = response.data['results'];
      final List<Faculty> faculties = [];

      for (final faculty in data) {
        faculties.add(
          Faculty(
            facultyId: faculty['id'],
            facultyName: faculty['name'],
          ),
        );
      }
      return faculties;
    } catch (error) {
      print('Ошибка при получении факультетов: $error');
      return [];
    }
  }

  @override
  List<EducationFormModel> getEducationForm() {
    List<EducationFormModel> educationList = [];
    for (final educationForm in educationForms) {
      educationList.add(EducationFormModel(
        educationId: educationForm['id'],
        educationTitle: educationForm['name'],
      ));
    }
    return educationList;
  }

  @override
  Future<List<AcademicGroup>> getAcademicGroup(
      [course, educationForm, faculty]) async {
    final response = await dio.get(
        'https://schedule-api.nbikemsu.ru/hierarchy/academic-groups/',
        queryParameters: {
          'course': course ?? '',
          'speciality__education_form': educationForm ?? '',
          'speciality__faculty': faculty ?? ''
        });
    final data = response.data['results'];
    List<AcademicGroup> academicGroups = [];
    for (final group in data) {
      academicGroups.add(AcademicGroup(
          id: group['id'],
          name: group['name'],
          course: group['course'],
          specialityCode: group['speciality']['code']));
    }
    return academicGroups;
  }

  @override
  Future<List<ScheduleGroup>> getScheduleGroup(
      AcademicGroup academicGroup) async {
    final response = await dio.get('https://schedule-api.nbikemsu.ru/schedule/',
        queryParameters: {'groups': academicGroup.id});
    final data = response.data['results'];
    final List<ScheduleGroup> groupsList = [];
    for (final group in data) {
      groupsList.add(
        ScheduleGroup(
            dateFrom: group['date_from'],
            dateTo: group['date_to'],
            typeName: group['type'] == null ? '' : group['type']['name'],
            attachmentFile: group['attachments'][0]['file'],
            description: group['description'] ?? ''),
      );
    }
    return groupsList;
  }
}
