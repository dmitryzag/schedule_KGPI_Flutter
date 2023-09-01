part of 'faculty_bloc.dart';

@immutable
sealed class FacultyEvent extends Equatable {}

class FacultyLoad extends FacultyEvent {
  @override
  List<Object?> get props => [];
}
