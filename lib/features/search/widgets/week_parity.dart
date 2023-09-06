import 'package:flutter/material.dart';
import 'package:iso_calendar/iso_calendar.dart';

class WeekParity extends StatefulWidget {
  const WeekParity({super.key});

  @override
  State<WeekParity> createState() => _WeekParityState();
}

class _WeekParityState extends State<WeekParity> {
  @override
  Widget build(BuildContext context) {
    final isoCalendar = IsoCalendar.fromDateTime(DateTime.now()).weekNumber % 2;
    final parityName = isoCalendar.isEven ? 'ЧЕТНАЯ' : 'НЕЧЕТНАЯ';
    final name = 'СЕЙЧАС $parityName НЕДЕЛЯ';
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: double.infinity,
        height: 50,
        child: Card(
          child: Center(
              child: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
