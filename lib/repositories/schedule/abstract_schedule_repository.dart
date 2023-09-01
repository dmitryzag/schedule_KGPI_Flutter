import 'package:schedule/repositories/schedule/models/faculties.dart';

abstract class AbstractScheduleRepository {
  Future<List<Faculty>> getFaculties();
}
