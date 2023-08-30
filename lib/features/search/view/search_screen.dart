import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:schedule/features/search/widgets/widgets.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        ScheduleAppBar(),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        ScheduleHistory(),
        FacultyBuilder(),
      ],
    );
  }
}
