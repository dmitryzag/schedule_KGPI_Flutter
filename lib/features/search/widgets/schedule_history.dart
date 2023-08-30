import 'package:flutter/material.dart';

class ScheduleHistory extends StatelessWidget {
  const ScheduleHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        width: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 200,
              child: const Card(),
            );
          },
        ),
      ),
    );
  }
}
