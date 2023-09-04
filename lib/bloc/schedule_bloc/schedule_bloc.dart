import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:schedule/repositories/schedule/models/academic_group.dart';
import 'package:schedule/repositories/schedule/models/faculties.dart';
import 'package:schedule/repositories/schedule/abstract_schedule_repository.dart';
import 'package:schedule/repositories/schedule/models/schedule_group.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  ScheduleBloc([this._scheduleRepository]) : super(FacultyInitial()) {
    on<LoadScheduleGroup>(_getScheduleGroup);
    on<LoadAcademicGroup>(_getAcademicGroups);
    on<SearchGroupEvent>(_onSearch);
    on<FacultyLoad>(
      (event, emit) async {
        try {
          if (state is! FacultyLoaded) {
            emit(FacultyLoading());
          }
          if (_scheduleRepository != null) {
            final facultyList = await _scheduleRepository!.getFaculties();
            emit(FacultyLoaded(facultyList: facultyList));
          } else {
            // обработка случая, когда _scheduleRepository не предоставлен
          }
        } catch (e) {
          emit(FacultyLoading());
        }
      },
    );
  }
  final _httpClient = Dio();

  _onSearch(SearchGroupEvent event, Emitter<ScheduleState> emit) async {
    if (event.query.length < 2) return;
    final response = await _httpClient.get(
      'https://schedule-api.nbikemsu.ru/hierarchy/academic-groups/',
      queryParameters: {'name': event.query},
    );
    print(response.data['results']);
    emit(SearchGroupState(groups: response.data['results']));
  }

  _getAcademicGroups(
      LoadAcademicGroup event, Emitter<ScheduleState> emit) async {
    if (state is! AcademicGroupLoaded) {
      emit(AcademicGroupLoading());
    }

    final academicGroups = await _scheduleRepository!.getAcademicGroup(
        event.course ?? '', event.educationFormId, event.facultyId);
    emit(AcademicGroupLoaded(academicGroups: academicGroups));
  }

  _getScheduleGroup(
      LoadScheduleGroup event, Emitter<ScheduleState> emit) async {
    if (state is! ScheduleGroupLoaded) {
      emit(ScheduleGroupLoading());
    }
    final scheduleGroups =
        await _scheduleRepository!.getScheduleGroup(event.academicGroup);
    emit(ScheduleGroupLoaded(scheduleGroup: scheduleGroups));
  }

  final AbstractScheduleRepository? _scheduleRepository;
}
