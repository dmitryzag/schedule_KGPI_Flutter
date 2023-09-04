import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:schedule/bloc/schedule_bloc/schedule_bloc.dart';
import 'package:schedule/features/features.dart';
import 'package:schedule/features/specialities/widgets/education_course.dart';
import 'package:schedule/repositories/schedule/abstract_schedule_repository.dart';
import 'package:schedule/repositories/schedule/models/education_form_model.dart';
import 'package:schedule/repositories/schedule/models/faculties.dart';
import 'package:schedule/router/router.dart';
import 'package:schedule/theme/custom_icons.dart';

@RoutePage()
class SpecialitiesScreen extends StatefulWidget {
  const SpecialitiesScreen(
      {super.key, required this.educationForm, required this.faculty});
  final EducationFormModel educationForm;
  final Faculty faculty;

  @override
  State<SpecialitiesScreen> createState() => _SpecialitiesScreenState();
}

class _SpecialitiesScreenState extends State<SpecialitiesScreen> {
  final scheduleBloc = ScheduleBloc(GetIt.I<AbstractScheduleRepository>());
  @override
  void initState() {
    scheduleBloc.add(LoadAcademicGroup(
        educationFormId: widget.educationForm.educationId,
        facultyId: widget.faculty.facultyId,
        course: null));
    super.initState();
  }

  void _onSelectedChanged(int newValue) {
    scheduleBloc.add(LoadAcademicGroup(
        educationFormId: widget.educationForm.educationId,
        facultyId: widget.faculty.facultyId,
        course: newValue + 1));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(widget.faculty.getIconFaculty()!),
            opacity: 0.03,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            ScheduleAppBar(
                title:
                    '${widget.educationForm.educationTitle} ${widget.faculty.getAbbr()}'),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            EducationCourse(onChanged: _onSelectedChanged),
            BlocBuilder<ScheduleBloc, ScheduleState>(
              bloc: scheduleBloc,
              builder: (context, state) {
                if (state is AcademicGroupLoaded) {
                  return SliverList.builder(
                    itemCount: state.academicGroups.length,
                    itemBuilder: (context, index) {
                      final academicGroup = state.academicGroups;
                      return Container(
                        margin: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Card(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(13),
                            onTap: () {
                              AutoRouter.of(context).push(ScheduleOfGroup(
                                  academicGroup: academicGroup[index]));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: ListTile(
                                trailing: const Icon(CustomIcons.arrow_right),
                                title: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      academicGroup[index].specialityCode ??
                                          'Отсутствует',
                                      style: theme.textTheme.labelMedium,
                                    ),
                                    Text(
                                      academicGroup[index].name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                                leading: Text(
                                  '${academicGroup[index].course} КУРС',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color.fromARGB(78, 0, 0, 0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
                if (state is AcademicGroupLoading) {
                  return const SliverToBoxAdapter(
                      child: Center(
                    child: CircularProgressIndicator(),
                  ));
                }
                return SliverToBoxAdapter(child: Container());
              },
            )
          ],
        ),
      ),
    );
  }
}
