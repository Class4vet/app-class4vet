import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:class4vet/theme/color.dart';
import 'package:class4vet/utils/data.dart';
import 'package:class4vet/widgets/category_box.dart';
import 'package:class4vet/widgets/feature_item.dart';
import 'package:class4vet/widgets/notification_box.dart';
import 'package:class4vet/widgets/recommend_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:class4vet/screens/course_detail_page.dart';
import 'package:class4vet/widgets/custom_image.dart';
import 'package:class4vet/screens/all_courses_page.dart';
import 'package:class4vet/screens/profile_page.dart';
import 'package:class4vet/screens/category_courses_page.dart';
import 'package:class4vet/widgets/course_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.appBarColor,
            pinned: true,
            snap: true,
            floating: true,
            title: _buildAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _buildBody(),
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: profile["image"]!,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ),
                    errorWidget: (context, url, error) => Icon(
                      Icons.person,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile["name"]!,
                  style: TextStyle(
                    color: AppColor.labelColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Good Morning!",
                  style: TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
        NotificationBox(
          notifiedNumber: 1,
        )
      ],
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCategories(),
          const SizedBox(height: 15),
          _buildFeaturesSection(),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AllCoursesPage(),
                      ),
                    );
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(fontSize: 14, color: AppColor.darker),
                  ),
                ),
              ],
            ),
          ),
          _buildRecommendSection(),
        ],
      ),
    );
  }

  _buildCategories() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryCoursesPage(
                      category: categories[index]['name'],
                    ),
                  ),
                );
              },
              child: CategoryBox(
                selectedColor: Colors.white,
                data: categories[index],
                onTap: null,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildFeaturesSection() {
    // Basic, Emergency, Equipment 카테고리의 첫 번째 코스를 가져옵니다
    final basicCourse = courses.firstWhere(
      (course) => course['category'] == 'Basic',
      orElse: () => courses[0],
    );
    final emergencyCourse = courses.firstWhere(
      (course) => course['category'] == 'Emergency',
      orElse: () => courses[0],
    );
    final equipmentCourse = courses.firstWhere(
      (course) => course['category'] == 'Equipment',
      orElse: () => courses[0],
    );

    final featuredCourses = [basicCourse, emergencyCourse, equipmentCourse];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: Text(
            "Featured",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: AppColor.textColor,
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemCount: featuredCourses.length,
            itemBuilder: (context, index) {
              final course = featuredCourses[index];
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: SizedBox(
                  width: 300,
                  child: CourseCard(
                    image: course['image']?.toString() ?? '',
                    title: course['name']?.toString() ?? '',
                    description: course['description']?.toString() ?? '',
                    price: course['price']?.toString() ?? '',
                    review: course['review']?.toString() ?? '',
                    icon: Icons.star,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourseDetailPage(
                            course: course,
                          ),
                        ),
                      );
                    },
                    isHorizontal: true,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  _buildRecommendSection() {
    // 리뷰 점수가 4.8 이상인 코스들을 추천 코스로 사용
    final recommends = courses.where((course) {
      try {
        final review = course['review']?.toString() ?? '0';
        return double.parse(review) >= 4.8;
      } catch (e) {
        return false;
      }
    }).toList();

    // 추천 코스가 없는 경우 기본 코스들을 사용
    if (recommends.isEmpty) {
      recommends.addAll(courses.take(3));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemCount: recommends.length,
            itemBuilder: (context, index) {
              final course = recommends[index];
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: SizedBox(
                  width: 300,
                  child: CourseCard(
                    image: course['image']?.toString() ?? '',
                    title: course['name']?.toString() ?? '',
                    description: course['description']?.toString() ?? '',
                    price: course['price']?.toString() ?? '',
                    review: course['review']?.toString() ?? '',
                    icon: Icons.star,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CourseDetailPage(course: course),
                        ),
                      );
                    },
                    isHorizontal: true,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
