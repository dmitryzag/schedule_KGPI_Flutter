import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule/bloc/bloc.dart';

import 'search_button.dart';

class ScheduleAppBar extends StatelessWidget {
  const ScheduleAppBar({super.key, this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      centerTitle: true,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      snap: true,
      floating: true,
      pinned: true,
      title: Text(
        title ?? 'Расписание',
        style: theme.textTheme.bodyLarge,
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(78),
        child: BlocProvider(
          create: (context) => ScheduleBloc(),
          child: SearchButton(),
        ),
      ),
    );
  }
}
