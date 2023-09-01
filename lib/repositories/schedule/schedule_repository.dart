import 'package:dio/dio.dart';
import 'package:schedule/models/faculties.dart';
import 'package:schedule/repositories/schedule/abstract_schedule_repository.dart';

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
      print(faculties);
      return faculties;
    } catch (error) {
      print('Ошибка при получении факультетов: $error');
      return [];
    }
  }
}
