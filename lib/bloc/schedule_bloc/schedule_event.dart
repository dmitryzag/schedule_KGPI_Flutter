part of 'schedule_bloc.dart';

@immutable
sealed class ScheduleEvent extends Equatable {}

class FacultyLoad extends ScheduleEvent {
  @override
  List<Object?> get props => [];
}

class SearchGroupEvent extends ScheduleEvent {
  final String query;

  SearchGroupEvent({required this.query});

  @override
  List<Object?> get props => [];
}

class LoadAcademicGroup extends ScheduleEvent {
  final int? course;
  final int educationFormId;
  final int facultyId;

  LoadAcademicGroup({
    required this.course,
    required this.educationFormId,
    required this.facultyId,
  });
  @override
  List<Object?> get props => [course, educationFormId, facultyId];
}

class LoadScheduleGroup extends ScheduleEvent {
  final AcademicGroup academicGroup;

  LoadScheduleGroup({required this.academicGroup});
  @override
  List<Object?> get props => [academicGroup];
}
