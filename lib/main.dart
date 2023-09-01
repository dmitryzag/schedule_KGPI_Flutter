import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:schedule/repositories/schedule/abstract_schedule_repository.dart';
import 'package:schedule/repositories/schedule/schedule_repository.dart';
import 'package:schedule/schedule_app.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractScheduleRepository>(
    () => ScheduleRepository(),
  );
  runApp(const ScheduleApp());
}
