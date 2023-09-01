part of 'faculty_bloc.dart';

@immutable
sealed class FacultyState extends Equatable {}

final class FacultyInitial extends FacultyState {
  @override
  List<Object?> get props => [];
}

final class FacultyLoaded extends FacultyState {
  final List<Faculty> facultyList;

  FacultyLoaded({required this.facultyList});

  @override
  List<Object?> get props => [facultyList];
}

final class FacultyLoading extends FacultyState {
  @override
  List<Object?> get props => throw [];
}

final class FacultyLoadingFailure extends FacultyState {
  @override
  List<Object?> get props => throw [];
}
