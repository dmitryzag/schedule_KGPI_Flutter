import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:schedule/repositories/schedule/models/faculties.dart';
import 'package:schedule/repositories/schedule/abstract_schedule_repository.dart';

part 'faculty_event.dart';
part 'faculty_state.dart';

class FacultyBloc extends Bloc<FacultyEvent, FacultyState> {
  FacultyBloc(this._scheduleRepository) : super(FacultyInitial()) {
    on<FacultyLoad>((event, emit) async {
      try {
        if (state is! FacultyLoaded) {
          emit(FacultyLoading());
        }
        final facultyList = await _scheduleRepository.getFaculties();
        emit(FacultyLoaded(facultyList: facultyList));
      } catch (e) {
        emit(FacultyLoading());
      }
    });
  }
  final AbstractScheduleRepository _scheduleRepository;
}
