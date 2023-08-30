import 'package:flutter/material.dart';

import 'search_button.dart';

class ScheduleAppBar extends StatelessWidget {
  const ScheduleAppBar({
    super.key,
  });

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
      surfaceTintColor: Colors.transparent,
      title: Text(
        'Расписание',
        style: theme.textTheme.bodyLarge,
      ),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(74),
        child: SearchButton(),
      ),
    );
  }
}
