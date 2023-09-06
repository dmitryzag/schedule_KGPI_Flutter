part of 'schedule_bloc.dart';

@immutable
sealed class ScheduleState extends Equatable {}

final class FacultyInitial extends ScheduleState {
  @override
  List<Object?> get props => [];
}

final class FacultyLoaded extends ScheduleState {
  final List<Faculty> facultyList;

  FacultyLoaded({required this.facultyList});

  @override
  List<Object?> get props => [facultyList];
}

final class FacultyLoading extends ScheduleState {
  @override
  List<Object?> get props => throw [];
}

final class FacultyLoadingFailure extends ScheduleState {
  @override
  List<Object?> get props => throw [];
}

final class SearchGroupState extends ScheduleState {
  final List groups;

  SearchGroupState({this.groups = const []});

  @override
  List<Object?> get props => [groups];
}

final class AcademicGroupState extends ScheduleState {
  final List<AcademicGroup> academicGroup;

  AcademicGroupState({required this.academicGroup});
  @override
  List<Object?> get props => [];
}

final class AcademicGroupLoaded extends ScheduleState {
  final List<AcademicGroup> academicGroups;

  AcademicGroupLoaded({required this.academicGroups});
  @override
  List<Object?> get props => [academicGroups];
}

final class AcademicGroupLoading extends ScheduleState {
  @override
  List<Object?> get props => [];
}

final class ScheduleGroupLoaded extends ScheduleState {
  final List<ScheduleGroup> scheduleGroup;

  ScheduleGroupLoaded({required this.scheduleGroup});

  @override
  List<Object?> get props => [scheduleGroup];
}

final class ScheduleGroupLoading extends ScheduleState {
  @override
  List<Object?> get props => [];
}
