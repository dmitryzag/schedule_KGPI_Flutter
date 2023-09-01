import 'package:schedule/models/faculties.dart';

abstract class AbstractScheduleRepository {
  Future<List<Faculty>> getFaculties();
}
