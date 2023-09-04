import 'package:equatable/equatable.dart';

class AcademicGroup extends Equatable {
  final int id;
  final String name;
  final int course;
  final String? specialityCode;
  const AcademicGroup({
    required this.id,
    required this.name,
    required this.course,
    required this.specialityCode,
  });

  @override
  List<Object> get props => [id, name, course];
}
