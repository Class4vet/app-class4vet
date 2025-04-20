import 'package:flutter/material.dart';
import 'package:class4vet/theme/color.dart';
import 'package:class4vet/utils/data.dart';
import 'package:class4vet/widgets/course_card.dart';
import 'package:class4vet/screens/course_detail_page.dart';

class CategoryCoursesPage extends StatelessWidget {
  final String category;

  const CategoryCoursesPage({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryCourses =
        courses.where((course) => course['category'] == category).toList();

    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      appBar: AppBar(
        backgroundColor: AppColor.appBarColor,
        title: Text(
          category,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: categoryCourses.length,
        itemBuilder: (context, index) {
          final course = categoryCourses[index];
          return CourseCard(
            image: course['image'],
            title: course['name'],
            description: course['description'],
            price: course['price'],
            review: course['review'].toString(),
            icon: Icons.school,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetailPage(course: course),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
