import 'package:flutter/material.dart';
import 'package:class4vet/theme/color.dart';
import 'package:class4vet/utils/data.dart';
import 'package:class4vet/widgets/course_card.dart';
import 'package:class4vet/screens/course_detail_page.dart';
import 'package:class4vet/models/category.dart';

class AllCoursesPage extends StatelessWidget {
  const AllCoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allLectures = _getAllLectures();

    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      appBar: AppBar(
        backgroundColor: AppColor.appBarColor,
        title: const Text(
          '모든 강의',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: allLectures.length,
        itemBuilder: (context, index) {
          final lecture = allLectures[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: CourseCard(lecture: lecture),
          );
        },
      ),
    );
  }

  List<Lecture> _getAllLectures() {
    final allLectures = <Lecture>[];
    for (final category in categories) {
      for (final subCategory in category.subCategories) {
        for (final classModel in subCategory.classes) {
          allLectures.addAll(classModel.lectures);
        }
      }
    }
    return allLectures;
  }
}
