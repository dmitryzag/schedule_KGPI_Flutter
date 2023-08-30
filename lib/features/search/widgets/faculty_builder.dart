import 'package:flutter/material.dart';
import 'package:schedule/custom_icons.dart';
import 'package:schedule/models/faculties.dart';

class FacultyBuilder extends StatelessWidget {
  const FacultyBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverList.builder(
      itemCount: faculties.length,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 1),
          height: 115,
          child: Card(
            margin: const EdgeInsets.all(10),
            child: Center(
              child: ListTile(
                trailing: const Icon(CustomIcons.arrow_right),
                leading: Image.asset(
                  faculties[index].facultyIcon,
                  height: 70,
                ),
                title: Text(
                  faculties[index].facultyName,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
