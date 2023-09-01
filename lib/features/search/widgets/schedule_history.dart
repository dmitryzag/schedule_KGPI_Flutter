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
              width: 220,
              child: const Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'С 11.09.2023 по 11.11.2023',
                      style: TextStyle(
                        color: Color.fromARGB(109, 0, 0, 0),
                      ),
                    ),
                    Text(
                      'Нечетная неделя',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(135, 0, 0, 0),
                      ),
                    ),
                    Text(
                      'ПМИ-20-1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
