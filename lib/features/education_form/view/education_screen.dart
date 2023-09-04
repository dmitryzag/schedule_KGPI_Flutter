import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule/features/education_form/widgets/eduformbuilder.dart';
import 'package:schedule/features/search/widgets/widgets.dart';
import 'package:schedule/repositories/schedule/models/faculties.dart';

@RoutePage()
class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key, required this.faculty}) : super(key: key);
  final Faculty faculty;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(faculty.getIconFaculty()!),
            opacity: 0.02,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            ScheduleAppBar(title: faculty.getAbbr()),
            const SliverToBoxAdapter(child: SizedBox(height: 15)),
            SliverToBoxAdapter(
              child: Image.asset(faculty.getIconFaculty()!, height: 175),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(
                child: Center(
                    child: Text(
              'Форма обучения',
              style: theme.textTheme.bodyLarge,
            ))),
            EduFormBuilder(faculty: faculty),
          ],
        ),
      ),
    );
  }
}
