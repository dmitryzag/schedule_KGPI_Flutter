import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:schedule/bloc/schedule_bloc/view.dart';
import 'package:schedule/features/pdf_view/view/pdf_view.dart';
import 'package:schedule/repositories/schedule/abstract_schedule_repository.dart';
import 'package:schedule/repositories/schedule/models/academic_group.dart';

import '../../features.dart';

@RoutePage()
class ScheduleAcademic extends StatefulWidget {
  const ScheduleAcademic({super.key, required this.academicGroup});
  final AcademicGroup academicGroup;

  @override
  State<ScheduleAcademic> createState() => _ScheduleAcademicState();
}

class _ScheduleAcademicState extends State<ScheduleAcademic> {
  final scheduleBloc = ScheduleBloc(GetIt.I<AbstractScheduleRepository>());

  @override
  void initState() {
    scheduleBloc.add(LoadScheduleGroup(academicGroup: widget.academicGroup));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: CustomScrollView(
        slivers: [
          ScheduleAppBar(
              title: '${widget.academicGroup.name} ${widget.academicGroup.id}'),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          BlocBuilder<ScheduleBloc, ScheduleState>(
            bloc: scheduleBloc,
            builder: (context, state) {
              if (state is ScheduleGroupLoaded) {
                return SliverList.builder(
                  itemCount: state.scheduleGroup.length,
                  itemBuilder: (context, index) {
                    final scheduleGroup = state.scheduleGroup[index];
                    return Column(
                      children: [
                        Text(scheduleGroup.description.isEmpty
                            ? 'С ${scheduleGroup.dateFrom} по ${scheduleGroup.dateTo}'
                            : scheduleGroup.description),
                        Text(scheduleGroup.typeName),
                        Text(scheduleGroup.attachmentFile),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PDFViewer(
                                  url: scheduleGroup.attachmentFile,
                                ),
                              ),
                            );
                          },
                          child: const Text('Открыть PDF'),
                        ),
                      ],
                    );
                  },
                );
              }

              return SliverToBoxAdapter();
            },
          )
        ],
      ),
    ));
  }
}
