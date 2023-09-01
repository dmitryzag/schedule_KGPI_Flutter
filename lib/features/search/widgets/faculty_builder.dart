import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:schedule/bloc/bloc.dart';
import 'package:schedule/custom_icons.dart';
import 'package:schedule/repositories/schedule/abstract_schedule_repository.dart';

class FacultyBuilder extends StatefulWidget {
  const FacultyBuilder({
    super.key,
  });

  @override
  State<FacultyBuilder> createState() => _FacultyBuilderState();
}

class _FacultyBuilderState extends State<FacultyBuilder> {
  final _facultyBloc = FacultyBloc(GetIt.I<AbstractScheduleRepository>());

  @override
  void initState() {
    _facultyBloc.add(FacultyLoad());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<FacultyBloc, FacultyState>(
      bloc: _facultyBloc,
      builder: (context, state) {
        if (state is FacultyLoaded) {
          return SliverList.builder(
            itemCount: state.facultyList.length,
            itemBuilder: (context, index) {
              final faculties = state.facultyList[index];
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 1),
                height: 115,
                child: Card(
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(13),
                    onTap: () {
                      // Handle card tap
                    },
                    child: Center(
                      child: ListTile(
                        trailing: const Icon(CustomIcons.arrow_right),
                        leading: Image.asset(
                          faculties.getIconFaculty(faculties.facultyId)!,
                          height: 70,
                        ),
                        title: Text(
                          faculties.facultyName,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }
        if (state is FacultyLoading) {
          return SliverToBoxAdapter(
            child: Container(
              height: 400,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            ),
          );
        }
        if (state is FacultyLoadingFailure) {
          return SliverToBoxAdapter(
            child: Container(
                height: 400,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      'Что-то пошло не так...',
                      style: theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 20),
                    Image.asset('assets/images/connection_failure.png'),
                  ],
                )),
          );
        }

        return const SliverToBoxAdapter(
          child: Center(
            child: Text('Что-то пошло не так'),
          ),
        );
      },
    );
  }
}
