import 'package:flutter/material.dart';

class EducationCourse extends StatefulWidget {
  const EducationCourse({Key? key, required this.onChanged}) : super(key: key);

  final ValueChanged<int> onChanged;

  @override
  _EducationCourseState createState() => _EducationCourseState();
}

class _EducationCourseState extends State<EducationCourse> {
  int _selected = -1;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 50,
        width: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selected = index;
                  widget.onChanged(_selected);
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 100,
                child: Card(
                  color: _selected == index ? Colors.greenAccent : Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${index + 1} курс',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
