import 'package:equatable/equatable.dart';

class ScheduleGroup extends Equatable {
  final String dateFrom;
  final String dateTo;
  final String typeName;
  final String attachmentFile;
  final String description;

  const ScheduleGroup(
      {required this.dateFrom,
      required this.dateTo,
      required this.typeName,
      required this.attachmentFile,
      required this.description});

  @override
  List<Object?> get props =>
      [dateFrom, dateTo, typeName, attachmentFile, description];
}
